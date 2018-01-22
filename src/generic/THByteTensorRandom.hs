{-# LANGUAGE ForeignFunctionInterface #-}

module THByteTensorRandom (
    c_THByteTensor_random,
    c_THByteTensor_clampedRandom,
    c_THByteTensor_cappedRandom,
    c_THByteTensor_geometric,
    c_THByteTensor_bernoulli,
    c_THByteTensor_bernoulli_FloatTensor,
    c_THByteTensor_bernoulli_DoubleTensor,
    c_THByteTensor_bernoulli_Tensor,
    p_THByteTensor_random,
    p_THByteTensor_clampedRandom,
    p_THByteTensor_cappedRandom,
    p_THByteTensor_geometric,
    p_THByteTensor_bernoulli,
    p_THByteTensor_bernoulli_FloatTensor,
    p_THByteTensor_bernoulli_DoubleTensor,
    p_THByteTensor_bernoulli_Tensor) where

import Foreign
import Foreign.C.Types
import THTypes
import Data.Word
import Data.Int

-- |c_THByteTensor_random : self _generator -> void
foreign import ccall "THTensorRandom.h THByteTensor_random"
  c_THByteTensor_random :: (Ptr CTHByteTensor) -> Ptr CTHGenerator -> IO ()

-- |c_THByteTensor_clampedRandom : self _generator min max -> void
foreign import ccall "THTensorRandom.h THByteTensor_clampedRandom"
  c_THByteTensor_clampedRandom :: (Ptr CTHByteTensor) -> Ptr CTHGenerator -> CLLong -> CLLong -> IO ()

-- |c_THByteTensor_cappedRandom : self _generator max -> void
foreign import ccall "THTensorRandom.h THByteTensor_cappedRandom"
  c_THByteTensor_cappedRandom :: (Ptr CTHByteTensor) -> Ptr CTHGenerator -> CLLong -> IO ()

-- |c_THByteTensor_geometric : self _generator p -> void
foreign import ccall "THTensorRandom.h THByteTensor_geometric"
  c_THByteTensor_geometric :: (Ptr CTHByteTensor) -> Ptr CTHGenerator -> CDouble -> IO ()

-- |c_THByteTensor_bernoulli : self _generator p -> void
foreign import ccall "THTensorRandom.h THByteTensor_bernoulli"
  c_THByteTensor_bernoulli :: (Ptr CTHByteTensor) -> Ptr CTHGenerator -> CDouble -> IO ()

-- |c_THByteTensor_bernoulli_FloatTensor : self _generator p -> void
foreign import ccall "THTensorRandom.h THByteTensor_bernoulli_FloatTensor"
  c_THByteTensor_bernoulli_FloatTensor :: (Ptr CTHByteTensor) -> Ptr CTHGenerator -> Ptr CTHFloatTensor -> IO ()

-- |c_THByteTensor_bernoulli_DoubleTensor : self _generator p -> void
foreign import ccall "THTensorRandom.h THByteTensor_bernoulli_DoubleTensor"
  c_THByteTensor_bernoulli_DoubleTensor :: (Ptr CTHByteTensor) -> Ptr CTHGenerator -> Ptr CTHDoubleTensor -> IO ()

-- |c_THByteTensor_bernoulli_Tensor : self _generator p -> void
foreign import ccall "THTensorRandom.h THByteTensor_bernoulli_Tensor"
  c_THByteTensor_bernoulli_Tensor :: (Ptr CTHByteTensor) -> Ptr CTHGenerator -> (Ptr CTHByteTensor) -> IO ()

-- |p_THByteTensor_random : Pointer to function : self _generator -> void
foreign import ccall "THTensorRandom.h &THByteTensor_random"
  p_THByteTensor_random :: FunPtr ((Ptr CTHByteTensor) -> Ptr CTHGenerator -> IO ())

-- |p_THByteTensor_clampedRandom : Pointer to function : self _generator min max -> void
foreign import ccall "THTensorRandom.h &THByteTensor_clampedRandom"
  p_THByteTensor_clampedRandom :: FunPtr ((Ptr CTHByteTensor) -> Ptr CTHGenerator -> CLLong -> CLLong -> IO ())

-- |p_THByteTensor_cappedRandom : Pointer to function : self _generator max -> void
foreign import ccall "THTensorRandom.h &THByteTensor_cappedRandom"
  p_THByteTensor_cappedRandom :: FunPtr ((Ptr CTHByteTensor) -> Ptr CTHGenerator -> CLLong -> IO ())

-- |p_THByteTensor_geometric : Pointer to function : self _generator p -> void
foreign import ccall "THTensorRandom.h &THByteTensor_geometric"
  p_THByteTensor_geometric :: FunPtr ((Ptr CTHByteTensor) -> Ptr CTHGenerator -> CDouble -> IO ())

-- |p_THByteTensor_bernoulli : Pointer to function : self _generator p -> void
foreign import ccall "THTensorRandom.h &THByteTensor_bernoulli"
  p_THByteTensor_bernoulli :: FunPtr ((Ptr CTHByteTensor) -> Ptr CTHGenerator -> CDouble -> IO ())

-- |p_THByteTensor_bernoulli_FloatTensor : Pointer to function : self _generator p -> void
foreign import ccall "THTensorRandom.h &THByteTensor_bernoulli_FloatTensor"
  p_THByteTensor_bernoulli_FloatTensor :: FunPtr ((Ptr CTHByteTensor) -> Ptr CTHGenerator -> Ptr CTHFloatTensor -> IO ())

-- |p_THByteTensor_bernoulli_DoubleTensor : Pointer to function : self _generator p -> void
foreign import ccall "THTensorRandom.h &THByteTensor_bernoulli_DoubleTensor"
  p_THByteTensor_bernoulli_DoubleTensor :: FunPtr ((Ptr CTHByteTensor) -> Ptr CTHGenerator -> Ptr CTHDoubleTensor -> IO ())

-- |p_THByteTensor_bernoulli_Tensor : Pointer to function : self _generator p -> void
foreign import ccall "THTensorRandom.h &THByteTensor_bernoulli_Tensor"
  p_THByteTensor_bernoulli_Tensor :: FunPtr ((Ptr CTHByteTensor) -> Ptr CTHGenerator -> (Ptr CTHByteTensor) -> IO ())