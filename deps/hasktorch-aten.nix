# See: https://gist.github.com/CMCDragonkai/41593d6d20a5f7c01b2e67a221aa0330

{ stdenv, cmake, gfortran, gmp, lib
, typing, pyaml
, cudaSupport ? false, cudatoolkit_10_0 ? null, cudnn_cudatoolkit_10_0 ? null, magma_cudatoolkit_10_0 ? null
, mklSupport ? false, blas ? null, liblapack ? null, mkl ? null
, dev ? false
}:

assert cudaSupport -> cudatoolkit_10_0 != null && cudnn_cudatoolkit_10_0 != null;
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
    gmp
    ]
    ++ lib.optionals cudaSupport [cudatoolkit_10_0 magma_cudatoolkit_10_0 cudnn_cudatoolkit_10_0]
    ++ (if mklSupport then [mkl] else [blas liblapack]);
  cmakeFlags = [
    ("-DNO_CUDA=" + (if cudaSupport then "false" else "true"))
    (if dev then "" else "-Wno-dev")
  ];
  postInstall = ''
    ls -lisah $out
  '';
}
