   let prelude = ../../../dhall/dhall-to-cabal/dhall/prelude.dhall
in let types = ../../../dhall/dhall-to-cabal/dhall/types.dhall
in let common = ../../../dhall/common.dhall

in common.Package //
  { name = "hasktorch-ffi-tests"
  , description = "This includes basic tests which generalize over both Hasktorch's CPU and GPU FFI bindings."
  , synopsis = "Testing library for Hasktorch's FFI bindings"
  , category = "${common.cabalvars.category}, FFI"
  , library =
    [ \(config : types.Config)
      -> prelude.defaults.Library //
        { build-depends =
          [ common.packages.base
          , common.packages.text
          , common.packages.hasktorch-types-th
          , common.packages.hspec
          , common.packages.QuickCheck
          ]
        , default-language = common.cabalvars.default-language
        , hs-source-dirs = [ "src" ]
        , autogen-modules = [ "Paths_hasktorch_ffi_tests" ]
        , other-modules = [ "Paths_hasktorch_ffi_tests" ]
        , exposed-modules = [ "Torch.FFI.Tests", "Torch.FFI.TestsNN" ]
        }
      ] : Optional (types.Config → types.Library)
  }
