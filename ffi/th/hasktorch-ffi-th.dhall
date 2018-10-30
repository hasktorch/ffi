   let prelude = ../../../dhall/dhall-to-cabal/dhall/prelude.dhall
in let types = ../../../dhall/dhall-to-cabal/dhall/types.dhall
in let common = ../../../dhall/common.dhall
in let List/map = ../../../dhall/Prelude/List/map
in let thffi     = \(pkg : Text) -> "Torch.FFI.TH.${pkg}"
in let thtype    = \(typ : Text) -> \(pkg : Text) -> thffi "${typ}.${pkg}"
in let thexports-integral
  = \(typ : Text)
  -> List/map Text Text (thtype typ)
    [ "Blas"
    , "Storage"
    , "StorageCopy"
    , "Tensor"
    , "TensorConv"
    , "TensorCopy"
    , "TensorMath"
    , "TensorRandom"
    , "Vector"
    , "FreeTensor"
    , "FreeStorage"
    ]

in let thexports-floating
  = \(typ : Text)
  -> thexports-integral typ
  # List/map Text Text (thtype typ) [ "Lapack", "TensorLapack" ]

in let lite-exports
  = \(config : types.Config)
  -> List/map Text Text thffi
    [ "DiskFile"
    , "File"
    , "LogAdd"
    , "MemoryFile"
    , "Random"
    , "Size"
    , "Storage"
    ]
  # thexports-floating "Double"
  # thexports-integral "Long"
  # (if config.flag "with_nn" then [ thffi "NN.Double" ] else [] : List Text)

in let full-exports
  = \(config : types.Config)
  -> lite-exports config
  # thexports-integral "Byte"
  # thexports-integral "Char"
  # thexports-integral "Int"
  # thexports-integral "Short"
  # thexports-floating "Float"
  # (if config.flag "with_nn" then [ thffi "NN.Float" ] else [] : List Text)

in common.Package //
  { name = "hasktorch-ffi-th"
  , description = "Core C bindings"
  , synopsis = "Torch for tensors and neural networks in Haskell"
  , flags = [ common.flags.half, common.flags.lite, common.flags.with_nn ]
  , library =
    [ \(config : types.Config)
    -> prelude.defaults.Library //
      { extra-libraries = [ "ATen" ]
      , hs-source-dirs = [ "src", "nn", "polyfill" ]
      , build-depends =
        [ common.packages.base
        , common.packages.hasktorch-types-th
        , common.packages.inline-c
        , common.packages.text
        ]
      , build-tools =
        [ { exe = "c2hs", version = prelude.anyVersion  } ]
      , default-language = common.cabalvars.default-language
      , c-sources =
        [ "cbits/finalizers.c"
        , "cbits/expand_polyfill.c"
        ]
      , other-modules = [ "Paths_hasktorch_ffi_th" ]
      , exposed-modules
        = if config.flag "lite" then lite-exports config else
        ( full-exports config
        -- This isn't an integral type, but we might need more tuning if we want to get this working
        # (if config.flag "half" then thexports-integral "Half" else [] : List Text) )
      , cc-options = ( if config.flag "half" then [ "-DHALF" ] else [] : List Text )
      }
    ] : Optional (types.Config → types.Library)

  , test-suites =
    [ { name = "spec"
      , test-suite
        = \(config : types.Config)
        -> prelude.defaults.TestSuite //
          { type = < exitcode-stdio = { main-is = "Spec.hs" } | detailed : { module : Text } >
          , default-language = common.cabalvars.default-language
          , hs-source-dirs = [ "tests" ]
          , build-depends =
            [ common.packages.base
            , common.packages.QuickCheck
            , common.packages.hasktorch-ffi-tests
            , common.packages.hasktorch-ffi-th
            , common.packages.hasktorch-types-th
            , common.packages.hspec
            , common.packages.text
            ]
          , other-modules =
            [ "MathSpec"
            , "TensorSpec"
            ] # (if config.flag "with_nn" then [ "NNSpec" ] else [] : List Text)
          }
    } ]
  }

