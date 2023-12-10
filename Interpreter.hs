module Interpreter where

import Lexer
import Parser
import TypeChecker

isValue :: Expr -> Bool
isValue BTrue = True
isValue BFalse = True
isValue (Num _) = True
isValue (Lam _ _ _) = True
isValue _ = False

subst :: String -> Expr -> Expr -> Expr
subst x n (Var v) = if x == v then n else Var v
subst x n (Lam v t b) = Lam v t (subst x n b)
subst x n (Let v e1 e2) = Let v (subst x n e1) (subst x n e2)
subst x n (App e1 e2) = App (subst x n e1) (subst x n e2)
subst x n (Add e1 e2) = Add (subst x n e1) (subst x n e2)
subst x n (Sub e1 e2) = Sub (subst x n e1) (subst x n e2)
subst x n (Mul e1 e2) = Mul (subst x n e1) (subst x n e2)
subst x n (And e1 e2) = And (subst x n e1) (subst x n e2)
subst x n (Or e1 e2) = Or (subst x n e1) (subst x n e2)
subst x n (Equal e1 e2) = Equal (subst x n e1) (subst x n e2)
subst x n (NotEqual e1 e2) = NotEqual (subst x n e1) (subst x n e2)
subst x n (Less e1 e2) = Less (subst x n e1) (subst x n e2)
subst x n (LessEqual e1 e2) = LessEqual (subst x n e1) (subst x n e2)
subst x n (Greater e1 e2) = Greater (subst x n e1) (subst x n e2)
subst x n (GreaterEqual e1 e2) = GreaterEqual (subst x n e1) (subst x n e2)
subst x n (If e e1 e2) = If (subst x n e) (subst x n e1) (subst x n e2)
subst x n (Paren e) = Paren (subst x n e)
subst x n e = e

step :: Expr -> Expr
-- ADD
step (Add (Num n1) (Num n2)) = Num (n1 + n2)
step (Add (Num n) e) = Add (Num n) (step e)
step (Add e1 e2) = Add (step e1) e2
-- SUB
step (Sub (Num n1) (Num n2)) = Num (n1 - n2)
step (Sub (Num n) e) = Sub (Num n) (step e)
step (Sub e1 e2) = Sub (step e1) e2
-- MUL
step (Mul (Num n1) (Num n2)) = Num (n1 * n2)
step (Mul (Num n) e) = Mul (Num n) (step e)
step (Mul e1 e2) = Mul (step e1) e2
-- AND
step (And BFalse _) = BFalse
step (And BTrue e) = e
step (And e1 e2) = And (step e1) e2
-- OR
step (Or BTrue _) = BTrue
step (Or BFalse e) = e
step (Or e1 e2) = Or (step e1) e2
-- EQUAL
step (Equal (Num n1) (Num n2)) = if n1 == n2 then BTrue else BFalse
step (Equal (Num n) e) = Equal (Num n) (step e)
step (Equal e1 e2) = Equal (step e1) e2
-- NOT EQUAL
step (NotEqual (Num n1) (Num n2)) = if n1 /= n2 then BTrue else BFalse
step (NotEqual (Num n) e) = NotEqual (Num n) (step e)
step (NotEqual e1 e2) = NotEqual (step e1) e2
-- GREATER THAN
step (Greater (Num n1) (Num n2)) = if n1 > n2 then BTrue else BFalse
step (Greater (Num n) e) = Greater (Num n) (step e)
step (Greater e1 e2) = Greater (step e1) e2
-- LESS THAN
step (Less (Num n1) (Num n2)) = if n1 < n2 then BTrue else BFalse
step (Less (Num n) e) = Less (Num n) (step e)
step (Less e1 e2) = Less (step e1) e2
-- GREATER THAN OR EQUAL
step (GreaterEqual (Num n1) (Num n2)) = if n1 >= n2 then BTrue else BFalse
step (GreaterEqual (Num n) e) = GreaterEqual (Num n) (step e)
step (GreaterEqual e1 e2) = GreaterEqual (step e1) e2
-- LESS THAN OR EQUAL
step (LessEqual (Num n1) (Num n2)) = if n1 <= n2 then BTrue else BFalse
step (LessEqual (Num n) e) = LessEqual (Num n) (step e)
step (LessEqual e1 e2) = LessEqual (step e1) e2
-- IF
step (If BTrue e1 _) = e1
step (If BFalse _ e2) = e2
step (If e e1 e2) = If (step e) e1 e2
-- PARENTHESES
step (Paren e) = e
-- LAMBDA
step (App (Lam x t b) e2)
  | isValue e2 = subst x e2 b
  | otherwise = App (Lam x t b) (step e2)
step (App e1 e2) = App (step e1) e2
-- LET
step (Let v e1 e2)
  | isValue e1 = subst v e1 e2
  | otherwise = Let v (step e1) e2
-- OTHER
step e = e

eval :: Expr -> Expr
eval e
  | isValue e = e
  | otherwise = eval (step e)