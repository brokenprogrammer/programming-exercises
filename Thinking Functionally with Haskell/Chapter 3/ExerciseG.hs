-- Construct a definition of divMod :: Nat -> Nat -> (Nat, Nat)
--
-- Answer:
--  divMod :: Nat -> Nat -> (Nat, Nat)
--  divmod x y = if x < y then (Zero,x)
--      else (Succ q,r)
--      where (q,r) = divMod (x-y) y