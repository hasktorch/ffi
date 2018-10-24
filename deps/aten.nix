# See: https://gist.github.com/CMCDragonkai/41593d6d20a5f7c01b2e67a221aa0330

{ stdenv, cmake, gfortran, lib
, typing, pyaml
, cudaSupport ? false, cudatoolkit ? null, cudnn ? null, magma ? null
, mklSupport ? false, blas ? null, liblapack ? null, mkl ? null
, dev ? false
}:

assert cudaSupport -> cudatoolkit != null && cudnn != null;
assert  mklSupport -> mkl != null;
assert !mklSupport -> blas != null && liblapack != null;

stdenv.mkDerivation rec {
  name = "hasktorch-aten";
  version = "0.0.1";
  src = ./aten;
  buildInputs = [
    cmake
    typing
    pyaml
    gfortran.cc.lib
    ]
    ++ lib.optionals cudaSupport [cudatoolkit magma cudnn]
    ++ (if mklSupport then [mkl] else [blas liblapack]);
  cmakeFlags = [
    ("-DNO_CUDA=" + (if cudaSupport then "false" else "true"))
    (if dev then "-Wno-dev" else "")
  ];
}
