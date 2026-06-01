open import Haskell.Prelude

-- Nat is not a valid Haskell kind
postulate
  badKind : (n m : Nat) → ⦃ p : n ≡ m ⦄ → String

{-# COMPILE AGDA2HS badKind #-}
