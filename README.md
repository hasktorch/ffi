# [WIP] The Hasktorch FFI

In reality, this repo is ready to be released. The Hasktorch FFI just needs some altered namespacing.

| Directory                   | Description |
| --------------------------- | ----------- |
| [`codegen/`][codegen]       | Code generation to produce low-level raw Haskell bindings |
| [`deps/`][deps]             | Dependencies to external repositories | 
| [`types/`][types]           | Memory-managed tensors and core data types that satisfy global and type-specific backpack types |
| [`ffi/`][ffi]               | Comprehensive raw bindings to C operations (TH, THNN, THC, THCUNN) |

See [the main repo](https://www.github.com/hasktorch/hasktorch) for details.
