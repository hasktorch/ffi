{-# LANGUAGE ForeignFunctionInterface #-}
module Torch.FFI.THC.Stream where

import Foreign
import Foreign.C.Types
import Torch.Types.TH
import Data.Word
import Data.Int

-- | c_THCStream_new :  flags -> THCStream *
foreign import ccall "THCStream.h THCStream_new"
  c_THCStream_new :: CInt -> IO (Ptr CTHCudaStream)

-- | c_THCStream_defaultStream :  device -> THCStream *
foreign import ccall "THCStream.h THCStream_defaultStream"
  c_THCStream_defaultStream :: CInt -> IO (Ptr CTHCudaStream)

-- | c_THCStream_newWithPriority :  flags priority -> THCStream *
foreign import ccall "THCStream.h THCStream_newWithPriority"
  c_THCStream_newWithPriority :: CInt -> CInt -> IO (Ptr CTHCudaStream)

-- | c_THCStream_free :  self -> void
foreign import ccall "THCStream.h THCStream_free"
  c_THCStream_free :: Ptr CTHCudaStream -> IO ()

-- | c_THCStream_retain :  self -> void
foreign import ccall "THCStream.h THCStream_retain"
  c_THCStream_retain :: Ptr CTHCudaStream -> IO ()

-- | p_THCStream_new : Pointer to function : flags -> THCStream *
foreign import ccall "THCStream.h &THCStream_new"
  p_THCStream_new :: FunPtr (CInt -> IO (Ptr CTHCudaStream))

-- | p_THCStream_defaultStream : Pointer to function : device -> THCStream *
foreign import ccall "THCStream.h &THCStream_defaultStream"
  p_THCStream_defaultStream :: FunPtr (CInt -> IO (Ptr CTHCudaStream))

-- | p_THCStream_newWithPriority : Pointer to function : flags priority -> THCStream *
foreign import ccall "THCStream.h &THCStream_newWithPriority"
  p_THCStream_newWithPriority :: FunPtr (CInt -> CInt -> IO (Ptr CTHCudaStream))

-- | p_THCStream_free : Pointer to function : self -> void
foreign import ccall "THCStream.h &THCStream_free"
  p_THCStream_free :: FunPtr (Ptr CTHCudaStream -> IO ())

-- | p_THCStream_retain : Pointer to function : self -> void
foreign import ccall "THCStream.h &THCStream_retain"
  p_THCStream_retain :: FunPtr (Ptr CTHCudaStream -> IO ())