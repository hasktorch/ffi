# See: https://gist.github.com/CMCDragonkai/41593d6d20a5f7c01b2e67a221aa0330

{ stdenv, cmake, blas, liblapack, gfortran, lib
, typing, pyaml, magma
, cudaSupport ? false, cudatoolkit ? null
, dev ? false
}:

assert cudaSupport -> cudatoolkit != null;

stdenv.mkDerivation rec {
  name = "hasktorch-aten";
  version = "0.0.1";
  src = ./aten;
  buildInputs = [
    cmake
    typing
    pyaml
    blas
    liblapack
    gfortran.cc.lib
    ]
    ++ lib.optionals cudaSupport [cudatoolkit magma];
  cmakeFlags = [
    ("-DNO_CUDA=" + (if cudaSupport then "false" else "true"))
    (if dev then "-Wno-dev" else "")
  ];
}
