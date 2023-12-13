module TypeChecker where

import Lexer

type Ctx = [(String, Ty)]

typeof :: Ctx -> Expr -> Maybe Ty
-- NATIVES
typeof ctx BTrue = Just TBool
typeof ctx BFalse = Just TBool
typeof ctx (Num _) = Just TNum
-- ADD
typeof ctx (Add e1 e2) = case (typeof ctx e1, typeof ctx e2) of
  (Just TNum, Just TNum) -> Just TNum
  _ -> Nothing
-- SUB
typeof ctx (Sub e1 e2) = case (typeof ctx e1, typeof ctx e2) of
  (Just TNum, Just TNum) -> Just TNum
  _ -> Nothing
-- MUL
typeof ctx (Mul e1 e2) = case (typeof ctx e1, typeof ctx e2) of
  (Just TNum, Just TNum) -> Just TNum
  _ -> Nothing
-- AND
typeof ctx (And e1 e2) = case (typeof ctx e1, typeof ctx e2) of
  (Just TBool, Just TBool) -> Just TBool
  _ -> Nothing
-- OR
typeof ctx (Or e1 e2) = case (typeof ctx e1, typeof ctx e2) of
  (Just TBool, Just TBool) -> Just TBool
  _ -> Nothing
-- EQUAL
typeof ctx (Equal e1 e2) = case (typeof ctx e1, typeof ctx e2) of
  (Just t1, Just t2) -> if t1 == t2 then Just t1 else Nothing
  _ -> Nothing
-- NOT EQUAL
typeof ctx (NotEqual e1 e2) = case (typeof ctx e1, typeof ctx e2) of
  (Just t1, Just t2) -> if t1 == t2 then Just t1 else Nothing
  _ -> Nothing
-- LESS THAN
typeof ctx (Less e1 e2) = case (typeof ctx e1, typeof ctx e2) of
  (Just TNum, Just TNum) -> Just TNum
  _ -> Nothing
-- LESS THAN OR EQUAL
typeof ctx (LessEqual e1 e2) = case (typeof ctx e1, typeof ctx e2) of
  (Just TNum, Just TNum) -> Just TNum
  _ -> Nothing
-- GREATER THAN
typeof ctx (Greater e1 e2) = case (typeof ctx e1, typeof ctx e2) of
  (Just TNum, Just TNum) -> Just TNum
  _ -> Nothing
-- GREATER THAN OR EQUAL
typeof ctx (GreaterEqual e1 e2) = case (typeof ctx e1, typeof ctx e2) of
  (Just TNum, Just TNum) -> Just TNum
  _ -> Nothing
-- IF
typeof ctx (If e e1 e2) = case typeof ctx e of
  Just TBool -> case (typeof ctx e1, typeof ctx e2) of
    (Just t1, Just t2) -> if t1 == t2 then Just t1 else Nothing
    _ -> Nothing
  _ -> Nothing
-- PARENTHESES
typeof ctx (Paren e) = typeof ctx e
-- LAMBDA
typeof ctx (Var x) = lookup x ctx
typeof ctx (Lam v t1 b) =
  let ctx' = (v, t1) : ctx
   in case typeof ctx' b of
        Just t2 -> Just (TFun t1 t2)
        _ -> Nothing
typeof ctx (App e1 e2) = case (typeof ctx e1, typeof ctx e2) of
  (Just (TFun t11 t12), Just t2) -> if t11 == t2 then Just t12 else Nothing
  _ -> Nothing
typeof ctx (Let v e1 e2) = case typeof ctx e1 of
  Just t1 -> typeof ((v, t1) : ctx) e2
  _ -> Nothing
-- CASE
typeof ctx (Case e (Cases cs)) =
  let etype = typeof ctx e
   in let keyTypes = etype : map (\(SCase k v) -> typeof ctx k) cs
       in let valueTypes = map (\(SCase k v) -> typeof ctx v) cs
           in if allEqual keyTypes && allEqual valueTypes then head valueTypes else Nothing

allEqual :: [Maybe Ty] -> Bool
allEqual [] = True
allEqual (x : xs) = all (== x) xs

typecheck :: Expr -> Expr
typecheck e = case typeof [] e of
  Just _ -> e
  _ -> error "Type error!"