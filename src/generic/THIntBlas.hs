{-# LANGUAGE ForeignFunctionInterface #-}

module THIntBlas (
    c_THIntBlas_swap,
    c_THIntBlas_scal,
    c_THIntBlas_copy,
    c_THIntBlas_axpy,
    c_THIntBlas_dot,
    c_THIntBlas_gemv,
    c_THIntBlas_ger,
    c_THIntBlas_gemm,
    p_THIntBlas_swap,
    p_THIntBlas_scal,
    p_THIntBlas_copy,
    p_THIntBlas_axpy,
    p_THIntBlas_dot,
    p_THIntBlas_gemv,
    p_THIntBlas_ger,
    p_THIntBlas_gemm) where

import Foreign
import Foreign.C.Types
import THTypes

-- |c_THIntBlas_swap : n x incx y incy -> void
foreign import ccall unsafe "THBlas.h THIntBlas_swap"
  c_THIntBlas_swap :: CLong -> Ptr CInt -> CLong -> Ptr CInt -> CLong -> IO ()

-- |c_THIntBlas_scal : n a x incx -> void
foreign import ccall unsafe "THBlas.h THIntBlas_scal"
  c_THIntBlas_scal :: CLong -> CInt -> Ptr CInt -> CLong -> IO ()

-- |c_THIntBlas_copy : n x incx y incy -> void
foreign import ccall unsafe "THBlas.h THIntBlas_copy"
  c_THIntBlas_copy :: CLong -> Ptr CInt -> CLong -> Ptr CInt -> CLong -> IO ()

-- |c_THIntBlas_axpy : n a x incx y incy -> void
foreign import ccall unsafe "THBlas.h THIntBlas_axpy"
  c_THIntBlas_axpy :: CLong -> CInt -> Ptr CInt -> CLong -> Ptr CInt -> CLong -> IO ()

-- |c_THIntBlas_dot : n x incx y incy -> real
foreign import ccall unsafe "THBlas.h THIntBlas_dot"
  c_THIntBlas_dot :: CLong -> Ptr CInt -> CLong -> Ptr CInt -> CLong -> CInt

-- |c_THIntBlas_gemv : trans m n alpha a lda x incx beta y incy -> void
foreign import ccall unsafe "THBlas.h THIntBlas_gemv"
  c_THIntBlas_gemv :: CChar -> CLong -> CLong -> CInt -> Ptr CInt -> CLong -> Ptr CInt -> CLong -> CInt -> Ptr CInt -> CLong -> IO ()

-- |c_THIntBlas_ger : m n alpha x incx y incy a lda -> void
foreign import ccall unsafe "THBlas.h THIntBlas_ger"
  c_THIntBlas_ger :: CLong -> CLong -> CInt -> Ptr CInt -> CLong -> Ptr CInt -> CLong -> Ptr CInt -> CLong -> IO ()

-- |c_THIntBlas_gemm : transa transb m n k alpha a lda b ldb beta c ldc -> void
foreign import ccall unsafe "THBlas.h THIntBlas_gemm"
  c_THIntBlas_gemm :: CChar -> CChar -> CLong -> CLong -> CLong -> CInt -> Ptr CInt -> CLong -> Ptr CInt -> CLong -> CInt -> Ptr CInt -> CLong -> IO ()

-- |p_THIntBlas_swap : Pointer to function n x incx y incy -> void
foreign import ccall unsafe "THBlas.h &THIntBlas_swap"
  p_THIntBlas_swap :: FunPtr (CLong -> Ptr CInt -> CLong -> Ptr CInt -> CLong -> IO ())

-- |p_THIntBlas_scal : Pointer to function n a x incx -> void
foreign import ccall unsafe "THBlas.h &THIntBlas_scal"
  p_THIntBlas_scal :: FunPtr (CLong -> CInt -> Ptr CInt -> CLong -> IO ())

-- |p_THIntBlas_copy : Pointer to function n x incx y incy -> void
foreign import ccall unsafe "THBlas.h &THIntBlas_copy"
  p_THIntBlas_copy :: FunPtr (CLong -> Ptr CInt -> CLong -> Ptr CInt -> CLong -> IO ())

-- |p_THIntBlas_axpy : Pointer to function n a x incx y incy -> void
foreign import ccall unsafe "THBlas.h &THIntBlas_axpy"
  p_THIntBlas_axpy :: FunPtr (CLong -> CInt -> Ptr CInt -> CLong -> Ptr CInt -> CLong -> IO ())

-- |p_THIntBlas_dot : Pointer to function n x incx y incy -> real
foreign import ccall unsafe "THBlas.h &THIntBlas_dot"
  p_THIntBlas_dot :: FunPtr (CLong -> Ptr CInt -> CLong -> Ptr CInt -> CLong -> CInt)

-- |p_THIntBlas_gemv : Pointer to function trans m n alpha a lda x incx beta y incy -> void
foreign import ccall unsafe "THBlas.h &THIntBlas_gemv"
  p_THIntBlas_gemv :: FunPtr (CChar -> CLong -> CLong -> CInt -> Ptr CInt -> CLong -> Ptr CInt -> CLong -> CInt -> Ptr CInt -> CLong -> IO ())

-- |p_THIntBlas_ger : Pointer to function m n alpha x incx y incy a lda -> void
foreign import ccall unsafe "THBlas.h &THIntBlas_ger"
  p_THIntBlas_ger :: FunPtr (CLong -> CLong -> CInt -> Ptr CInt -> CLong -> Ptr CInt -> CLong -> Ptr CInt -> CLong -> IO ())

-- |p_THIntBlas_gemm : Pointer to function transa transb m n k alpha a lda b ldb beta c ldc -> void
foreign import ccall unsafe "THBlas.h &THIntBlas_gemm"
  p_THIntBlas_gemm :: FunPtr (CChar -> CChar -> CLong -> CLong -> CLong -> CInt -> Ptr CInt -> CLong -> Ptr CInt -> CLong -> CInt -> Ptr CInt -> CLong -> IO ())