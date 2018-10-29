{ mkDerivation, ATen, base, c2hs, hasktorch-ffi-tests
, hasktorch-ffi-th, hasktorch-types-th, hasktorch-types-thc, hspec
, inline-c, QuickCheck, stdenv, text
}:
mkDerivation {
  pname = "hasktorch-ffi-thc";
  version = "0.0.1.0";
  src = ./.;
  libraryHaskellDepends = [
    base hasktorch-types-th hasktorch-types-thc inline-c text
  ];
  librarySystemDepends = [ ATen ];
  libraryToolDepends = [ c2hs ];
  testHaskellDepends = [
    base hasktorch-ffi-tests hasktorch-ffi-th hasktorch-types-th
    hasktorch-types-thc hspec QuickCheck text
  ];
  homepage = "https://github.com/hasktorch/hasktorch#readme";
  description = "CuTorch (and THCuNN) for tensors and neural networks in Haskell";
  license = stdenv.lib.licenses.bsd3;
}
