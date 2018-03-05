{-# LANGUAGE ForeignFunctionInterface #-}
module Torch.FFI.TH.Int.TensorConv
  ( c_validXCorr2Dptr
  , c_validConv2Dptr
  , c_fullXCorr2Dptr
  , c_fullConv2Dptr
  , c_validXCorr2DRevptr
  , c_conv2DRevger
  , c_conv2DRevgerm
  , c_conv2Dger
  , c_conv2Dmv
  , c_conv2Dmm
  , c_conv2Dmul
  , c_conv2Dcmul
  , c_validXCorr3Dptr
  , c_validConv3Dptr
  , c_fullXCorr3Dptr
  , c_fullConv3Dptr
  , c_validXCorr3DRevptr
  , c_conv3DRevger
  , c_conv3Dger
  , c_conv3Dmv
  , c_conv3Dmul
  , c_conv3Dcmul
  , p_validXCorr2Dptr
  , p_validConv2Dptr
  , p_fullXCorr2Dptr
  , p_fullConv2Dptr
  , p_validXCorr2DRevptr
  , p_conv2DRevger
  , p_conv2DRevgerm
  , p_conv2Dger
  , p_conv2Dmv
  , p_conv2Dmm
  , p_conv2Dmul
  , p_conv2Dcmul
  , p_validXCorr3Dptr
  , p_validConv3Dptr
  , p_fullXCorr3Dptr
  , p_fullConv3Dptr
  , p_validXCorr3DRevptr
  , p_conv3DRevger
  , p_conv3Dger
  , p_conv3Dmv
  , p_conv3Dmul
  , p_conv3Dcmul
  ) where

import Foreign
import Foreign.C.Types
import Torch.Types.TH
import Data.Word
import Data.Int

-- | c_validXCorr2Dptr :  r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h THIntTensor_validXCorr2Dptr"
  c_validXCorr2Dptr :: Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> IO (())

-- | c_validConv2Dptr :  r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h THIntTensor_validConv2Dptr"
  c_validConv2Dptr :: Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> IO (())

-- | c_fullXCorr2Dptr :  r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h THIntTensor_fullXCorr2Dptr"
  c_fullXCorr2Dptr :: Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> IO (())

-- | c_fullConv2Dptr :  r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h THIntTensor_fullConv2Dptr"
  c_fullConv2Dptr :: Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> IO (())

-- | c_validXCorr2DRevptr :  r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h THIntTensor_validXCorr2DRevptr"
  c_validXCorr2DRevptr :: Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> IO (())

-- | c_conv2DRevger :  r_ beta alpha t_ k_ srow scol -> void
foreign import ccall "THTensorConv.h THIntTensor_conv2DRevger"
  c_conv2DRevger :: Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> IO (())

-- | c_conv2DRevgerm :  r_ beta alpha t_ k_ srow scol -> void
foreign import ccall "THTensorConv.h THIntTensor_conv2DRevgerm"
  c_conv2DRevgerm :: Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> IO (())

-- | c_conv2Dger :  r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h THIntTensor_conv2Dger"
  c_conv2Dger :: Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (())

-- | c_conv2Dmv :  r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h THIntTensor_conv2Dmv"
  c_conv2Dmv :: Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (())

-- | c_conv2Dmm :  r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h THIntTensor_conv2Dmm"
  c_conv2Dmm :: Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (())

-- | c_conv2Dmul :  r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h THIntTensor_conv2Dmul"
  c_conv2Dmul :: Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (())

-- | c_conv2Dcmul :  r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h THIntTensor_conv2Dcmul"
  c_conv2Dcmul :: Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (())

-- | c_validXCorr3Dptr :  r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h THIntTensor_validXCorr3Dptr"
  c_validXCorr3Dptr :: Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO (())

-- | c_validConv3Dptr :  r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h THIntTensor_validConv3Dptr"
  c_validConv3Dptr :: Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO (())

-- | c_fullXCorr3Dptr :  r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h THIntTensor_fullXCorr3Dptr"
  c_fullXCorr3Dptr :: Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO (())

-- | c_fullConv3Dptr :  r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h THIntTensor_fullConv3Dptr"
  c_fullConv3Dptr :: Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO (())

-- | c_validXCorr3DRevptr :  r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h THIntTensor_validXCorr3DRevptr"
  c_validXCorr3DRevptr :: Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO (())

-- | c_conv3DRevger :  r_ beta alpha t_ k_ sdepth srow scol -> void
foreign import ccall "THTensorConv.h THIntTensor_conv3DRevger"
  c_conv3DRevger :: Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> CLLong -> IO (())

-- | c_conv3Dger :  r_ beta alpha t_ k_ sdepth srow scol vf xc -> void
foreign import ccall "THTensorConv.h THIntTensor_conv3Dger"
  c_conv3Dger :: Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (())

-- | c_conv3Dmv :  r_ beta alpha t_ k_ sdepth srow scol vf xc -> void
foreign import ccall "THTensorConv.h THIntTensor_conv3Dmv"
  c_conv3Dmv :: Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (())

-- | c_conv3Dmul :  r_ beta alpha t_ k_ sdepth srow scol vf xc -> void
foreign import ccall "THTensorConv.h THIntTensor_conv3Dmul"
  c_conv3Dmul :: Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (())

-- | c_conv3Dcmul :  r_ beta alpha t_ k_ sdepth srow scol vf xc -> void
foreign import ccall "THTensorConv.h THIntTensor_conv3Dcmul"
  c_conv3Dcmul :: Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (())

-- | p_validXCorr2Dptr : Pointer to function : r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h &THIntTensor_validXCorr2Dptr"
  p_validXCorr2Dptr :: FunPtr (Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> IO (()))

-- | p_validConv2Dptr : Pointer to function : r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h &THIntTensor_validConv2Dptr"
  p_validConv2Dptr :: FunPtr (Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> IO (()))

-- | p_fullXCorr2Dptr : Pointer to function : r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h &THIntTensor_fullXCorr2Dptr"
  p_fullXCorr2Dptr :: FunPtr (Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> IO (()))

-- | p_fullConv2Dptr : Pointer to function : r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h &THIntTensor_fullConv2Dptr"
  p_fullConv2Dptr :: FunPtr (Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> IO (()))

-- | p_validXCorr2DRevptr : Pointer to function : r_ alpha t_ ir ic k_ kr kc sr sc -> void
foreign import ccall "THTensorConv.h &THIntTensor_validXCorr2DRevptr"
  p_validXCorr2DRevptr :: FunPtr (Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> IO (()))

-- | p_conv2DRevger : Pointer to function : r_ beta alpha t_ k_ srow scol -> void
foreign import ccall "THTensorConv.h &THIntTensor_conv2DRevger"
  p_conv2DRevger :: FunPtr (Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> IO (()))

-- | p_conv2DRevgerm : Pointer to function : r_ beta alpha t_ k_ srow scol -> void
foreign import ccall "THTensorConv.h &THIntTensor_conv2DRevgerm"
  p_conv2DRevgerm :: FunPtr (Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> IO (()))

-- | p_conv2Dger : Pointer to function : r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THIntTensor_conv2Dger"
  p_conv2Dger :: FunPtr (Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (()))

-- | p_conv2Dmv : Pointer to function : r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THIntTensor_conv2Dmv"
  p_conv2Dmv :: FunPtr (Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (()))

-- | p_conv2Dmm : Pointer to function : r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THIntTensor_conv2Dmm"
  p_conv2Dmm :: FunPtr (Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (()))

-- | p_conv2Dmul : Pointer to function : r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THIntTensor_conv2Dmul"
  p_conv2Dmul :: FunPtr (Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (()))

-- | p_conv2Dcmul : Pointer to function : r_ beta alpha t_ k_ srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THIntTensor_conv2Dcmul"
  p_conv2Dcmul :: FunPtr (Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (()))

-- | p_validXCorr3Dptr : Pointer to function : r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h &THIntTensor_validXCorr3Dptr"
  p_validXCorr3Dptr :: FunPtr (Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO (()))

-- | p_validConv3Dptr : Pointer to function : r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h &THIntTensor_validConv3Dptr"
  p_validConv3Dptr :: FunPtr (Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO (()))

-- | p_fullXCorr3Dptr : Pointer to function : r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h &THIntTensor_fullXCorr3Dptr"
  p_fullXCorr3Dptr :: FunPtr (Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO (()))

-- | p_fullConv3Dptr : Pointer to function : r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h &THIntTensor_fullConv3Dptr"
  p_fullConv3Dptr :: FunPtr (Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO (()))

-- | p_validXCorr3DRevptr : Pointer to function : r_ alpha t_ it ir ic k_ kt kr kc st sr sc -> void
foreign import ccall "THTensorConv.h &THIntTensor_validXCorr3DRevptr"
  p_validXCorr3DRevptr :: FunPtr (Ptr (CInt) -> CInt -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> Ptr (CInt) -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> CLLong -> IO (()))

-- | p_conv3DRevger : Pointer to function : r_ beta alpha t_ k_ sdepth srow scol -> void
foreign import ccall "THTensorConv.h &THIntTensor_conv3DRevger"
  p_conv3DRevger :: FunPtr (Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> CLLong -> IO (()))

-- | p_conv3Dger : Pointer to function : r_ beta alpha t_ k_ sdepth srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THIntTensor_conv3Dger"
  p_conv3Dger :: FunPtr (Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (()))

-- | p_conv3Dmv : Pointer to function : r_ beta alpha t_ k_ sdepth srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THIntTensor_conv3Dmv"
  p_conv3Dmv :: FunPtr (Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (()))

-- | p_conv3Dmul : Pointer to function : r_ beta alpha t_ k_ sdepth srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THIntTensor_conv3Dmul"
  p_conv3Dmul :: FunPtr (Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (()))

-- | p_conv3Dcmul : Pointer to function : r_ beta alpha t_ k_ sdepth srow scol vf xc -> void
foreign import ccall "THTensorConv.h &THIntTensor_conv3Dcmul"
  p_conv3Dcmul :: FunPtr (Ptr (CTHIntTensor) -> CInt -> CInt -> Ptr (CTHIntTensor) -> Ptr (CTHIntTensor) -> CLLong -> CLLong -> CLLong -> Ptr (CChar) -> Ptr (CChar) -> IO (()))