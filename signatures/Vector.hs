signature Vector where

data CTensor
data CReal
data CAccReal

c_fill    :: Ptr CTensor -> CTensor -> CPtrdiff -> IO ()
c_cadd    :: Ptr CTensor -> Ptr CTensor -> Ptr CTensor -> CTensor -> CPtrdiff -> IO ()
c_adds    :: Ptr CTensor -> Ptr CTensor -> CTensor -> CPtrdiff -> IO ()
c_cmul    :: Ptr CTensor -> Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_muls    :: Ptr CTensor -> Ptr CTensor -> CTensor -> CPtrdiff -> IO ()
c_cdiv    :: Ptr CTensor -> Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_divs    :: Ptr CTensor -> Ptr CTensor -> CTensor -> CPtrdiff -> IO ()
c_copy    :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_neg     :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_abs     :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_log     :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_lgamma  :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_log1p   :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_sigmoid :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_exp     :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_erf     :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_erfinv  :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_cos     :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_acos    :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_cosh    :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_sin     :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_asin    :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_sinh    :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_tan     :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_atan    :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_tanh    :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_pow     :: Ptr CTensor -> Ptr CTensor -> CTensor -> CPtrdiff -> IO ()
c_sqrt    :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_rsqrt   :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_ceil    :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_floor   :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_round   :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_trunc   :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_frac    :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
c_cinv    :: Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ()
-- c_vectorDispatchInit :: IO ()

p_fill    :: FunPtr (Ptr CTensor -> CTensor -> CPtrdiff -> IO ())
p_cadd    :: FunPtr (Ptr CTensor -> Ptr CTensor -> Ptr CTensor -> CTensor -> CPtrdiff -> IO ())
p_adds    :: FunPtr (Ptr CTensor -> Ptr CTensor -> CTensor -> CPtrdiff -> IO ())
p_cmul    :: FunPtr (Ptr CTensor -> Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_muls    :: FunPtr (Ptr CTensor -> Ptr CTensor -> CTensor -> CPtrdiff -> IO ())
p_cdiv    :: FunPtr (Ptr CTensor -> Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_divs    :: FunPtr (Ptr CTensor -> Ptr CTensor -> CTensor -> CPtrdiff -> IO ())
p_copy    :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_neg     :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_abs     :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_log     :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_lgamma  :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_log1p   :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_sigmoid :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_exp     :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_erf     :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_erfinv  :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_cos     :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_acos    :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_cosh    :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_sin     :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_asin    :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_sinh    :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_tan     :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_atan    :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_tanh    :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_pow     :: FunPtr (Ptr CTensor -> Ptr CTensor -> CTensor -> CPtrdiff -> IO ())
p_sqrt    :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_rsqrt   :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_ceil    :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_floor   :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_round   :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_trunc   :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_frac    :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
p_cinv    :: FunPtr (Ptr CTensor -> Ptr CTensor -> CPtrdiff -> IO ())
-- p_vectorDispatchInit :: FunPtr (IO ())
