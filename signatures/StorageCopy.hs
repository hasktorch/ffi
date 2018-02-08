signature Torch.Raw.Storage.Copy where

data CTensor
data CReal
data CAccReal

c_rawCopy    :: Ptr CTensor -> Ptr CReal -> IO ()
c_copy       :: Ptr CTensor -> Ptr CTensor -> IO ()
c_copyByte   :: Ptr CTensor -> Ptr CTHByteStorage -> IO ()
c_copyChar   :: Ptr CTensor -> Ptr CTHCharStorage -> IO ()
c_copyShort  :: Ptr CTensor -> Ptr CTHShortStorage -> IO ()
c_copyInt    :: Ptr CTensor -> Ptr CTHIntStorage -> IO ()
c_copyLong   :: Ptr CTensor -> Ptr CTHLongStorage -> IO ()
c_copyFloat  :: Ptr CTensor -> Ptr CTHFloatStorage -> IO ()
c_copyDouble :: Ptr CTensor -> Ptr CTHDoubleStorage -> IO ()
c_copyHalf   :: Ptr CTensor -> Ptr CTHHalfStorage -> IO ()

p_rawCopy    :: FunPtr (Ptr CTensor -> Ptr CReal -> IO ())
p_copy       :: FunPtr (Ptr CTensor -> Ptr CTensor -> IO ())
p_copyByte   :: FunPtr (Ptr CTensor -> Ptr CTHByteStorage -> IO ())
p_copyChar   :: FunPtr (Ptr CTensor -> Ptr CTHCharStorage -> IO ())
p_copyShort  :: FunPtr (Ptr CTensor -> Ptr CTHShortStorage -> IO ())
p_copyInt    :: FunPtr (Ptr CTensor -> Ptr CTHIntStorage -> IO ())
p_copyLong   :: FunPtr (Ptr CTensor -> Ptr CTHLongStorage -> IO ())
p_copyFloat  :: FunPtr (Ptr CTensor -> Ptr CTHFloatStorage -> IO ())
p_copyDouble :: FunPtr (Ptr CTensor -> Ptr CTHDoubleStorage -> IO ())
p_copyHalf   :: FunPtr (Ptr CTensor -> Ptr CTHHalfStorage -> IO ())
