{-# LANGUAGE ForeignFunctionInterface #-}
module Torch.FFI.THC.Char.TensorMath where

import Foreign
import Foreign.C.Types
import Torch.Types.TH
import Data.Word
import Data.Int

-- | c_fill :  state self value -> void
foreign import ccall "THCTensorMath.h THCCharTensor_fill"
  c_fill :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> CChar -> IO ()

-- | c_zero :  state self -> void
foreign import ccall "THCTensorMath.h THCCharTensor_zero"
  c_zero :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> IO ()

-- | c_zeros :  state r_ size -> void
foreign import ccall "THCTensorMath.h THCCharTensor_zeros"
  c_zeros :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaLongStorage -> IO ()

-- | c_zerosLike :  state r_ input -> void
foreign import ccall "THCTensorMath.h THCCharTensor_zerosLike"
  c_zerosLike :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaCharTensor -> IO ()

-- | c_ones :  state r_ size -> void
foreign import ccall "THCTensorMath.h THCCharTensor_ones"
  c_ones :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaLongStorage -> IO ()

-- | c_onesLike :  state r_ input -> void
foreign import ccall "THCTensorMath.h THCCharTensor_onesLike"
  c_onesLike :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaCharTensor -> IO ()

-- | c_reshape :  state r_ t size -> void
foreign import ccall "THCTensorMath.h THCCharTensor_reshape"
  c_reshape :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaCharTensor -> Ptr CTHCudaLongStorage -> IO ()

-- | c_numel :  state t -> ptrdiff_t
foreign import ccall "THCTensorMath.h THCCharTensor_numel"
  c_numel :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> IO CPtrdiff

-- | c_cat :  state result ta tb dimension -> void
foreign import ccall "THCTensorMath.h THCCharTensor_cat"
  c_cat :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaCharTensor -> Ptr CTHCudaCharTensor -> CInt -> IO ()

-- | c_catArray :  state result inputs numInputs dimension -> void
foreign import ccall "THCTensorMath.h THCCharTensor_catArray"
  c_catArray :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr (Ptr CTHCudaCharTensor) -> CInt -> CInt -> IO ()

-- | c_nonzero :  state tensor self -> void
foreign import ccall "THCTensorMath.h THCCharTensor_nonzero"
  c_nonzero :: Ptr CTHCudaState -> Ptr CTHCudaLongTensor -> Ptr CTHCudaCharTensor -> IO ()

-- | c_tril :  state self src k -> void
foreign import ccall "THCTensorMath.h THCCharTensor_tril"
  c_tril :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaCharTensor -> CLLong -> IO ()

-- | c_triu :  state self src k -> void
foreign import ccall "THCTensorMath.h THCCharTensor_triu"
  c_triu :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaCharTensor -> CLLong -> IO ()

-- | c_diag :  state self src k -> void
foreign import ccall "THCTensorMath.h THCCharTensor_diag"
  c_diag :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaCharTensor -> CLLong -> IO ()

-- | c_eye :  state self n k -> void
foreign import ccall "THCTensorMath.h THCCharTensor_eye"
  c_eye :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> CLLong -> CLLong -> IO ()

-- | c_trace :  state self -> accreal
foreign import ccall "THCTensorMath.h THCCharTensor_trace"
  c_trace :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> IO CLong

-- | c_range :  state r_ xmin xmax step -> void
foreign import ccall "THCTensorMath.h THCCharTensor_range"
  c_range :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> CLong -> CLong -> CLong -> IO ()

-- | c_arange :  state r_ xmin xmax step -> void
foreign import ccall "THCTensorMath.h THCCharTensor_arange"
  c_arange :: Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> CLong -> CLong -> CLong -> IO ()

-- | p_fill : Pointer to function : state self value -> void
foreign import ccall "THCTensorMath.h &THCCharTensor_fill"
  p_fill :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> CChar -> IO ())

-- | p_zero : Pointer to function : state self -> void
foreign import ccall "THCTensorMath.h &THCCharTensor_zero"
  p_zero :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> IO ())

-- | p_zeros : Pointer to function : state r_ size -> void
foreign import ccall "THCTensorMath.h &THCCharTensor_zeros"
  p_zeros :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaLongStorage -> IO ())

-- | p_zerosLike : Pointer to function : state r_ input -> void
foreign import ccall "THCTensorMath.h &THCCharTensor_zerosLike"
  p_zerosLike :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaCharTensor -> IO ())

-- | p_ones : Pointer to function : state r_ size -> void
foreign import ccall "THCTensorMath.h &THCCharTensor_ones"
  p_ones :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaLongStorage -> IO ())

-- | p_onesLike : Pointer to function : state r_ input -> void
foreign import ccall "THCTensorMath.h &THCCharTensor_onesLike"
  p_onesLike :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaCharTensor -> IO ())

-- | p_reshape : Pointer to function : state r_ t size -> void
foreign import ccall "THCTensorMath.h &THCCharTensor_reshape"
  p_reshape :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaCharTensor -> Ptr CTHCudaLongStorage -> IO ())

-- | p_numel : Pointer to function : state t -> ptrdiff_t
foreign import ccall "THCTensorMath.h &THCCharTensor_numel"
  p_numel :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> IO CPtrdiff)

-- | p_cat : Pointer to function : state result ta tb dimension -> void
foreign import ccall "THCTensorMath.h &THCCharTensor_cat"
  p_cat :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaCharTensor -> Ptr CTHCudaCharTensor -> CInt -> IO ())

-- | p_catArray : Pointer to function : state result inputs numInputs dimension -> void
foreign import ccall "THCTensorMath.h &THCCharTensor_catArray"
  p_catArray :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr (Ptr CTHCudaCharTensor) -> CInt -> CInt -> IO ())

-- | p_nonzero : Pointer to function : state tensor self -> void
foreign import ccall "THCTensorMath.h &THCCharTensor_nonzero"
  p_nonzero :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaLongTensor -> Ptr CTHCudaCharTensor -> IO ())

-- | p_tril : Pointer to function : state self src k -> void
foreign import ccall "THCTensorMath.h &THCCharTensor_tril"
  p_tril :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaCharTensor -> CLLong -> IO ())

-- | p_triu : Pointer to function : state self src k -> void
foreign import ccall "THCTensorMath.h &THCCharTensor_triu"
  p_triu :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaCharTensor -> CLLong -> IO ())

-- | p_diag : Pointer to function : state self src k -> void
foreign import ccall "THCTensorMath.h &THCCharTensor_diag"
  p_diag :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> Ptr CTHCudaCharTensor -> CLLong -> IO ())

-- | p_eye : Pointer to function : state self n k -> void
foreign import ccall "THCTensorMath.h &THCCharTensor_eye"
  p_eye :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> CLLong -> CLLong -> IO ())

-- | p_trace : Pointer to function : state self -> accreal
foreign import ccall "THCTensorMath.h &THCCharTensor_trace"
  p_trace :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> IO CLong)

-- | p_range : Pointer to function : state r_ xmin xmax step -> void
foreign import ccall "THCTensorMath.h &THCCharTensor_range"
  p_range :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> CLong -> CLong -> CLong -> IO ())

-- | p_arange : Pointer to function : state r_ xmin xmax step -> void
foreign import ccall "THCTensorMath.h &THCCharTensor_arange"
  p_arange :: FunPtr (Ptr CTHCudaState -> Ptr CTHCudaCharTensor -> CLong -> CLong -> CLong -> IO ())