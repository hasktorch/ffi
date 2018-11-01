   let prelude = ../../../dhall/dhall-to-cabal/dhall/prelude.dhall sha256:01509b3c6e9eaae4150a6e0ced124c2db191bf6046534a9d4973b7f05afd1d0a
in let types = ../../../dhall/dhall-to-cabal/dhall/types.dhall sha256:cfd7597246781e8d4c6dfa5f0eabba75f14dc3f3deb7527973909b37c93f42f5
in let fn = ../../../dhall/common/functions.dhall sha256:45e8bee44c93da6f4c47a3fdacc558b00858461325b807d4afc8bf0965716c33
in let common = ../../../dhall/common.dhall
in let List/map = ../../../dhall/Prelude/List/map
in let thcffi     = \(pkg : Text) -> "Torch.FFI.THC.${pkg}"
in let thctype    = \(typ : Text) -> \(pkg : Text) -> thcffi "${typ}.${pkg}"
in let thexports-integral
  = \(typ : Text)
  -> List/map Text Text (thctype typ)
    [ "Storage"
    , "StorageCopy"
    , "Tensor"
    , "TensorCopy"
    , "TensorIndex"
    , "TensorMode"
    , "TensorMath"
    , "TensorMathCompareT"
    , "TensorMathScan"
    , "TensorMathPairwise"
    , "TensorMathPointwise"
    , "TensorMathReduce"
    , "TensorMasked"
    , "TensorMathCompare"
    , "TensorRandom"
    , "TensorScatterGather"
    , "TensorSort"
    , "TensorTopK"
    ]

in let thexports-floating
  = \(typ : Text)
  -> thexports-integral typ
  # List/map Text Text (thctype typ) [ "TensorMathMagma", "TensorMathBlas" ]

in let lite-exports
  = \(config : types.Config)
  -> List/map Text Text thcffi
    [ "State"
    , "Stream"
    , "Blas"
    , "Half"
    , "CachingHostAllocator"
    , "CachingAllocator"
    , "Sleep"
    , "TensorMath"
    , "TensorRandom"
    , "General"
    ]


  # thexports-integral "Long"
  # thexports-floating "Double"
  # (if config.flag "with_nn" then [ thcffi "NN.Double" ] else [] : List Text)

in let full-exports
  = \(config : types.Config)
  -> lite-exports config
  # thexports-integral "Byte"
  # thexports-integral "Char"
  # thexports-integral "Int"
  # thexports-integral "Short"
  # (
    if False == config.flag "float" then [] : List Text
    else thexports-floating "Float"
    -- This is disabled for now
    -- # (if config.flag "with_nn" then [ thcffi "NN.Float" ] else [] : List Text)
  )

in common.Package //
  { name = "hasktorch-ffi-thc"
  , description = "Cutorch (and THCUNN) FFI bindings for GPU-based tensors and neural networks in Haskell"
  , synopsis = "Bindings to Cutorch"
  , category = "${common.cabalvars.category}, FFI"
  , flags = [ common.flags.half, common.flags.lite, common.flags.float, common.flags.with_nn ]
  , library =
    [ \(config : types.Config)
    -> prelude.defaults.Library //
      { extra-libraries = [ "ATen" ]
      , c-sources = [ "cbits/state_stuff.c" ]
      -- this is primarily used in cbits/state_stuff.c and turned off for CI
      , cpp-options = [ "-DCUDA" ]
      , hs-source-dirs = [ "src", "nn", "state" ]
      , build-depends =
        [ common.packages.base
        , common.packages.hasktorch-types-th
        , common.packages.hasktorch-types-thc
        , common.packages.inline-c
        , common.packages.text
        ]
      , build-tools =
        [ { exe = "c2hs", version = prelude.anyVersion  } ]
      , default-language = common.cabalvars.default-language
      , autogen-modules = [ "Paths_hasktorch_ffi_thc" ]
      , other-modules = [ "Paths_hasktorch_ffi_thc" ]
      , exposed-modules
        = if config.flag "lite" then lite-exports config else
        ( full-exports config
        -- This isn't an integral type, but we might need more tuning if we want to get this working
        # (if config.flag "half" then thexports-integral "Half" else [] : List Text) )
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
            , fn.anyver "hasktorch-ffi-thc"
            , common.packages.hasktorch-types-th
            , common.packages.hasktorch-types-thc
            , common.packages.hspec
            , common.packages.text
            ]
          , other-modules =
            [ "MathSpec"
            , "TensorSpec"
            , "Internal"
            ] # (if config.flag "with_nn" then [ "NNSpec" ] else [] : List Text)
          }
    } ]
  }


