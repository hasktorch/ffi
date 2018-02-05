{-# LANGUAGE ForeignFunctionInterface #-}

module THIntTensorCopy
  ( c_copy
  , c_copyByte
  , c_copyChar
  , c_copyShort
  , c_copyInt
  , c_copyLong
  , c_copyFloat
  , c_copyDouble
  , c_copyHalf
  , p_copy
  , p_copyByte
  , p_copyChar
  , p_copyShort
  , p_copyInt
  , p_copyLong
  , p_copyFloat
  , p_copyDouble
  , p_copyHalf
  ) where

import Foreign
import Foreign.C.Types
import THTypes
import Data.Word
import Data.Int

-- | c_copy : tensor src -> void
foreign import ccall "THTensorCopy.h copy"
  c_copy :: Ptr CTHIntTensor -> Ptr CTHIntTensor -> IO ()

-- | c_copyByte : tensor src -> void
foreign import ccall "THTensorCopy.h copyByte"
  c_copyByte :: Ptr CTHIntTensor -> Ptr CTHByteTensor -> IO ()

-- | c_copyChar : tensor src -> void
foreign import ccall "THTensorCopy.h copyChar"
  c_copyChar :: Ptr CTHIntTensor -> Ptr CTHCharTensor -> IO ()

-- | c_copyShort : tensor src -> void
foreign import ccall "THTensorCopy.h copyShort"
  c_copyShort :: Ptr CTHIntTensor -> Ptr CTHShortTensor -> IO ()

-- | c_copyInt : tensor src -> void
foreign import ccall "THTensorCopy.h copyInt"
  c_copyInt :: Ptr CTHIntTensor -> Ptr CTHIntTensor -> IO ()

-- | c_copyLong : tensor src -> void
foreign import ccall "THTensorCopy.h copyLong"
  c_copyLong :: Ptr CTHIntTensor -> Ptr CTHLongTensor -> IO ()

-- | c_copyFloat : tensor src -> void
foreign import ccall "THTensorCopy.h copyFloat"
  c_copyFloat :: Ptr CTHIntTensor -> Ptr CTHFloatTensor -> IO ()

-- | c_copyDouble : tensor src -> void
foreign import ccall "THTensorCopy.h copyDouble"
  c_copyDouble :: Ptr CTHIntTensor -> Ptr CTHDoubleTensor -> IO ()

-- | c_copyHalf : tensor src -> void
foreign import ccall "THTensorCopy.h copyHalf"
  c_copyHalf :: Ptr CTHIntTensor -> Ptr CTHHalfTensor -> IO ()

-- |p_copy : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &copy"
  p_copy :: FunPtr (Ptr CTHIntTensor -> Ptr CTHIntTensor -> IO ())

-- |p_copyByte : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &copyByte"
  p_copyByte :: FunPtr (Ptr CTHIntTensor -> Ptr CTHByteTensor -> IO ())

-- |p_copyChar : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &copyChar"
  p_copyChar :: FunPtr (Ptr CTHIntTensor -> Ptr CTHCharTensor -> IO ())

-- |p_copyShort : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &copyShort"
  p_copyShort :: FunPtr (Ptr CTHIntTensor -> Ptr CTHShortTensor -> IO ())

-- |p_copyInt : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &copyInt"
  p_copyInt :: FunPtr (Ptr CTHIntTensor -> Ptr CTHIntTensor -> IO ())

-- |p_copyLong : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &copyLong"
  p_copyLong :: FunPtr (Ptr CTHIntTensor -> Ptr CTHLongTensor -> IO ())

-- |p_copyFloat : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &copyFloat"
  p_copyFloat :: FunPtr (Ptr CTHIntTensor -> Ptr CTHFloatTensor -> IO ())

-- |p_copyDouble : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &copyDouble"
  p_copyDouble :: FunPtr (Ptr CTHIntTensor -> Ptr CTHDoubleTensor -> IO ())

-- |p_copyHalf : Pointer to function : tensor src -> void
foreign import ccall "THTensorCopy.h &copyHalf"
  p_copyHalf :: FunPtr (Ptr CTHIntTensor -> Ptr CTHHalfTensor -> IO ())