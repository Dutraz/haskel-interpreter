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
-- IF
typeof ctx (If e e1 e2) = case typeof ctx e of
  Just TBool -> case (typeof ctx e1, typeof ctx e2) of
    (Just t1, Just t2) -> if t1 == t2 then Just t1 else Nothing
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

typecheck :: Expr -> Expr
typecheck e = case typeof [] e of
  Just _ -> e
  _ -> error "Type error!"