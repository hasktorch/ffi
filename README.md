# The Hasktorch FFI

Hasktorch FFI repo. Includes code generation tools, external dependencies, and low-level raw FFI bandings.

This repo is loaded as a submodule by the [main repo](https://github.com/hasktorch/hasktorch). If you are new to Hasktorch, start there.

| Directory                   | Description |
| --------------------------- | ----------- |
| [`codegen/`][codegen]       | Code generation to produce low-level raw Haskell bindings |
| [`deps/`][deps]             | Dependencies to external repositories | 
| [`ffi/`][ffi]               | Comprehensive raw bindings to C operations (TH, THNN, THC, THCUNN) |
| [`types/`][types]           | Memory-managed tensors and core data types that satisfy global and type-specific backpack types |

See [the main repo](https://www.github.com/hasktorch/hasktorch) for details.

<!-- project directory links -->
[codegen]: ./codegen/
[deps]: ./deps/
[ffi]: ./ffi/
[types]: ./types/
