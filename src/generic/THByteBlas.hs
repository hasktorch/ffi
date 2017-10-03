{-# LANGUAGE ForeignFunctionInterface #-}

module THByteBlas (
    c_THByteBlas_swap,
    c_THByteBlas_scal,
    c_THByteBlas_copy,
    c_THByteBlas_axpy,
    c_THByteBlas_dot,
    c_THByteBlas_gemv,
    c_THByteBlas_ger,
    c_THByteBlas_gemm,
    p_THByteBlas_swap,
    p_THByteBlas_scal,
    p_THByteBlas_copy,
    p_THByteBlas_axpy,
    p_THByteBlas_dot,
    p_THByteBlas_gemv,
    p_THByteBlas_ger,
    p_THByteBlas_gemm) where

import Foreign
import Foreign.C.Types
import THTypes

-- |c_THByteBlas_swap : n x incx y incy -> void
foreign import ccall unsafe "THBlas.h THByteBlas_swap"
  c_THByteBlas_swap :: CLong -> Ptr CChar -> CLong -> Ptr CChar -> CLong -> IO ()

-- |c_THByteBlas_scal : n a x incx -> void
foreign import ccall unsafe "THBlas.h THByteBlas_scal"
  c_THByteBlas_scal :: CLong -> CChar -> Ptr CChar -> CLong -> IO ()

-- |c_THByteBlas_copy : n x incx y incy -> void
foreign import ccall unsafe "THBlas.h THByteBlas_copy"
  c_THByteBlas_copy :: CLong -> Ptr CChar -> CLong -> Ptr CChar -> CLong -> IO ()

-- |c_THByteBlas_axpy : n a x incx y incy -> void
foreign import ccall unsafe "THBlas.h THByteBlas_axpy"
  c_THByteBlas_axpy :: CLong -> CChar -> Ptr CChar -> CLong -> Ptr CChar -> CLong -> IO ()

-- |c_THByteBlas_dot : n x incx y incy -> real
foreign import ccall unsafe "THBlas.h THByteBlas_dot"
  c_THByteBlas_dot :: CLong -> Ptr CChar -> CLong -> Ptr CChar -> CLong -> CChar

-- |c_THByteBlas_gemv : trans m n alpha a lda x incx beta y incy -> void
foreign import ccall unsafe "THBlas.h THByteBlas_gemv"
  c_THByteBlas_gemv :: CChar -> CLong -> CLong -> CChar -> Ptr CChar -> CLong -> Ptr CChar -> CLong -> CChar -> Ptr CChar -> CLong -> IO ()

-- |c_THByteBlas_ger : m n alpha x incx y incy a lda -> void
foreign import ccall unsafe "THBlas.h THByteBlas_ger"
  c_THByteBlas_ger :: CLong -> CLong -> CChar -> Ptr CChar -> CLong -> Ptr CChar -> CLong -> Ptr CChar -> CLong -> IO ()

-- |c_THByteBlas_gemm : transa transb m n k alpha a lda b ldb beta c ldc -> void
foreign import ccall unsafe "THBlas.h THByteBlas_gemm"
  c_THByteBlas_gemm :: CChar -> CChar -> CLong -> CLong -> CLong -> CChar -> Ptr CChar -> CLong -> Ptr CChar -> CLong -> CChar -> Ptr CChar -> CLong -> IO ()

-- |p_THByteBlas_swap : Pointer to function n x incx y incy -> void
foreign import ccall unsafe "THBlas.h &THByteBlas_swap"
  p_THByteBlas_swap :: FunPtr (CLong -> Ptr CChar -> CLong -> Ptr CChar -> CLong -> IO ())

-- |p_THByteBlas_scal : Pointer to function n a x incx -> void
foreign import ccall unsafe "THBlas.h &THByteBlas_scal"
  p_THByteBlas_scal :: FunPtr (CLong -> CChar -> Ptr CChar -> CLong -> IO ())

-- |p_THByteBlas_copy : Pointer to function n x incx y incy -> void
foreign import ccall unsafe "THBlas.h &THByteBlas_copy"
  p_THByteBlas_copy :: FunPtr (CLong -> Ptr CChar -> CLong -> Ptr CChar -> CLong -> IO ())

-- |p_THByteBlas_axpy : Pointer to function n a x incx y incy -> void
foreign import ccall unsafe "THBlas.h &THByteBlas_axpy"
  p_THByteBlas_axpy :: FunPtr (CLong -> CChar -> Ptr CChar -> CLong -> Ptr CChar -> CLong -> IO ())

-- |p_THByteBlas_dot : Pointer to function n x incx y incy -> real
foreign import ccall unsafe "THBlas.h &THByteBlas_dot"
  p_THByteBlas_dot :: FunPtr (CLong -> Ptr CChar -> CLong -> Ptr CChar -> CLong -> CChar)

-- |p_THByteBlas_gemv : Pointer to function trans m n alpha a lda x incx beta y incy -> void
foreign import ccall unsafe "THBlas.h &THByteBlas_gemv"
  p_THByteBlas_gemv :: FunPtr (CChar -> CLong -> CLong -> CChar -> Ptr CChar -> CLong -> Ptr CChar -> CLong -> CChar -> Ptr CChar -> CLong -> IO ())

-- |p_THByteBlas_ger : Pointer to function m n alpha x incx y incy a lda -> void
foreign import ccall unsafe "THBlas.h &THByteBlas_ger"
  p_THByteBlas_ger :: FunPtr (CLong -> CLong -> CChar -> Ptr CChar -> CLong -> Ptr CChar -> CLong -> Ptr CChar -> CLong -> IO ())

-- |p_THByteBlas_gemm : Pointer to function transa transb m n k alpha a lda b ldb beta c ldc -> void
foreign import ccall unsafe "THBlas.h &THByteBlas_gemm"
  p_THByteBlas_gemm :: FunPtr (CChar -> CChar -> CLong -> CLong -> CLong -> CChar -> Ptr CChar -> CLong -> Ptr CChar -> CLong -> CChar -> Ptr CChar -> CLong -> IO ())