   let prelude = ../../../dhall/dhall-to-cabal/dhall/prelude.dhall
in let types = ../../../dhall/dhall-to-cabal/dhall/types.dhall
in let common = ../../../dhall/common.dhall

in common.Package //
  { name = "hasktorch-types-thc"
  , description = "core C types"
  , synopsis = "Raw C-types from cutorch."
  , library = Some (
    \(config : types.Config)
    -> prelude.defaults.Library //
      { build-depends =
        [ common.packages.base
        , common.packages.inline-c
        , common.packages.hasktorch-types-th
        ]
      , build-tools = [ { exe = "c2hs", version = prelude.anyVersion } ]
      , default-extensions =
        [ prelude.types.Extensions.KindSignatures True
        , prelude.types.Extensions.DataKinds True
        ]
      , default-language = common.cabalvars.default-language
      , hs-source-dirs = [ "src" ]
      , other-modules =
        [ "Paths_hasktorch_types_thc"
        , "Torch.Types.THC.Internal"
        ]
      , exposed-modules =
        [ "Torch.Types.THC"
        , "Torch.Types.THCUNN"
        , "Torch.Types.THC.Structs"
        , "Torch.Types.Cuda.Structs"
        , "Torch.Types.CuRand.Structs"
        , "Torch.Types.THC.Char"
        , "Torch.Types.THC.Byte"
        , "Torch.Types.THC.Short"
        , "Torch.Types.THC.Int"
        , "Torch.Types.THC.Long"
        , "Torch.Types.THC.Float"
        , "Torch.Types.THC.Double"
        ]
      }
    )
  }
