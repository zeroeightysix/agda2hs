open import Haskell.Prelude

data Expr : (a : Set) → Set₁ where
    ENum : Int → Expr Int
    EStr : String → Expr String
    EAdd : Expr Int → Expr Int → Expr Int

{-# COMPILE AGDA2HS Expr gadt #-}

eval : Expr a → a
eval (ENum x) = x
eval (EStr b) = b
eval (EAdd a b) = (eval a) + (eval b)

{-# COMPILE AGDA2HS eval #-}
