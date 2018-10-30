   let prelude = ../../dhall/dhall-to-cabal/dhall/prelude.dhall
in let types = ../../dhall/dhall-to-cabal/dhall/types.dhall
in let fn = ../../dhall/common/functions.dhall
in let common = ../../dhall/common.dhall
in let cabalvars = common.cabalvars
in let packages = common.packages

in common.Package //
  { name = "hasktorch-codegen"
  , description = "Code generation tools"
  , synopsis = "Torch for tensors and neural networks in Haskell"
  , library =
    [ \(config : types.Config)
    -> prelude.defaults.Library
       // { build-depends =
              [ common.packages.base
              , common.packages.containers
              , common.packages.directory
              , common.packages.hashable
              , common.packages.megaparsec
              , common.packages.pretty-show
              , common.packages.text
              , common.packages.unordered-containers
              ]
          , default-language = common.cabalvars.default-language
          , default-extensions =
            [ prelude.types.Extensions.LambdaCase True
            , prelude.types.Extensions.OverloadedStrings True
            ]
          , hs-source-dirs = [ "src" ]
          , exposed-modules =
            [ "CodeGen.FileMappings"
            , "CodeGen.Parse"
            , "CodeGen.Parse.Cases"
            , "CodeGen.Prelude"
            , "CodeGen.Render"
            , "CodeGen.Render.C"
            , "CodeGen.Render.Function"
            , "CodeGen.Render.Haskell"
            , "CodeGen.Types"
            , "CodeGen.Types.CLI"
            , "CodeGen.Types.HsOutput"
            , "CodeGen.Types.Parsed"
            ]
          , other-modules = [ "Paths_hasktorch_codegen" ]
          }
    ] : Optional (types.Config → types.Library)

  , executables =
    [ { name = "ht-codegen"
      , executable =
        λ(config : types.Config)
        -> prelude.defaults.Executable
        // { main-is = "Main.hs"
           , default-language = cabalvars.default-language
           , hs-source-dirs = [ "exe" ]
           , default-extensions =
             [ prelude.types.Extensions.LambdaCase True
             , prelude.types.Extensions.OverloadedStrings True
             ]
           , other-modules = [ "CLIOptions" ]
           , build-depends =
             [ packages.base
             , fn.anyver "hasktorch-codegen"
             , packages.pretty-show
             , packages.optparse-applicative
             ]
           }
    } ]
  , test-suites =
    [ { name = "spec"
      , test-suite =
        λ(config : types.Config)
        → prelude.defaults.TestSuite
        // { type = < exitcode-stdio = { main-is = "Spec.hs" } | detailed : { module : Text } >
           , default-language = cabalvars.default-language
           , default-extensions =
             [ prelude.types.Extensions.LambdaCase True
             , prelude.types.Extensions.OverloadedStrings True
             ]
           , build-depends =
             [ packages.QuickCheck
             , packages.base
             , packages.containers
             , fn.anyver "hasktorch-codegen"
             , packages.hspec
             , packages.hspec-discover
             , packages.megaparsec
             , packages.pretty-show
             , packages.text
             ]
           , hs-source-dirs = [ "tests" ]
           , other-modules =
             [ "CodeGen.Instances"
             , "CodeGen.ParseSpec"
             , "CodeGen.RenderSpec"
             , "CodeGen.Render.CSpec"
             , "CodeGen.Render.FunctionSpec"
             ]
           }
    } ]
  }
