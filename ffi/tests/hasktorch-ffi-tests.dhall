   let prelude = ../../../dhall/dhall-to-cabal/dhall/prelude.dhall sha256:01509b3c6e9eaae4150a6e0ced124c2db191bf6046534a9d4973b7f05afd1d0a
in let types = ../../../dhall/dhall-to-cabal/dhall/types.dhall sha256:cfd7597246781e8d4c6dfa5f0eabba75f14dc3f3deb7527973909b37c93f42f5
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
