{-# LANGUAGE GADTs #-}
module GadtExpr where

data Expr a where
    ENum :: Int -> Expr Int
    EStr :: String -> Expr String
    EAdd :: Expr Int -> Expr Int -> Expr Int

eval :: Expr a -> a
eval (ENum x) = x
eval (EStr b) = b
eval (EAdd a b) = eval a + eval b

