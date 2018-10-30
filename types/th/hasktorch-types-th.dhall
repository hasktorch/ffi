   let prelude = ../../../dhall/dhall-to-cabal/dhall/prelude.dhall
in let types = ../../../dhall/dhall-to-cabal/dhall/types.dhall
in let common = ../../../dhall/common.dhall

in common.Package //
  { name = "hasktorch-types-th"
  , description = "Includes core C-types generated from c2hsc."
  , synopsis = "C-types for Torch"
  , category = "${common.cabalvars.category}, FFI"
  , library = Some (
    \(config : types.Config)
    -> prelude.defaults.Library //
      { build-depends =
        [ common.packages.base
        , common.packages.inline-c
        ]
      , build-tools = [ { exe = "c2hs", version = prelude.anyVersion } ]
      , c-sources = [ "cbits/state_free.c" ]
      , default-extensions =
        [ prelude.types.Extensions.KindSignatures True
        , prelude.types.Extensions.DataKinds True
        ]
      , hs-source-dirs = [ "src" ]
      , autogen-modules = [ "Paths_hasktorch_types_th" ]
      , other-modules = [ "Paths_hasktorch_types_th" ]
      , exposed-modules =
        [ "Torch.Types.TH.Byte"
        , "Torch.Types.TH.Char"
        , "Torch.Types.TH.Short"
        , "Torch.Types.TH.Int"
        , "Torch.Types.TH.Long"
        , "Torch.Types.TH.Float"
        , "Torch.Types.TH.Double"
        , "Torch.Types.TH"
        , "Torch.Types.TH.Structs"
        , "Torch.Types.Numeric"
        ]
      , default-language = common.cabalvars.default-language
      }
    )
  }
