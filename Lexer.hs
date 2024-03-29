module Lexer where

import Data.Char

data Expr
  = BTrue
  | BFalse
  | Num Int
  | Add Expr Expr
  | Sub Expr Expr
  | Mul Expr Expr
  | And Expr Expr
  | Or Expr Expr
  | Equal Expr Expr
  | NotEqual Expr Expr
  | Less Expr Expr
  | LessEqual Expr Expr
  | Greater Expr Expr
  | GreaterEqual Expr Expr
  | If Expr Expr Expr
  | Var String
  | Lam String Ty Expr
  | App Expr Expr
  | Paren Expr
  | Let String Expr Expr
  | Case Expr Cases
  deriving (Show)

data Ty
  = TBool
  | TNum
  | TFun Ty Ty
  deriving (Show, Eq)

data SCase
  = SCase Expr Expr
  deriving (Show)

data Cases
  = Cases [SCase]
  deriving (Show)

data Token
  = TokenTrue
  | TokenFalse
  | TokenNum Int
  | TokenAdd
  | TokenSub
  | TokenMul
  | TokenAnd
  | TokenOr
  | TokenDbEq
  | TokenNotEq
  | TokenGt
  | TokenLt
  | TokenGte
  | TokenLte
  | TokenIf
  | TokenThen
  | TokenElse
  | TokenVar String
  | TokenLam
  | TokenArrow
  | TokenLParen
  | TokenRParen
  | TokenLet
  | TokenEq
  | TokenIn
  | TokenColon
  | TokenBoolean
  | TokenNumber
  | TokenCase
  | TokenOf
  | TokenSemicolon
  deriving (Show, Eq)

isSymb :: Char -> Bool
isSymb c = c `elem` "+-*&|\\-><()=:!"

lexer :: String -> [Token]
lexer [] = []
lexer ('(' : cs) = TokenLParen : lexer cs
lexer (')' : cs) = TokenRParen : lexer cs
lexer (';' : cs) = TokenSemicolon : lexer cs
lexer (c : cs)
  | isSpace c = lexer cs
  | isDigit c = lexNum (c : cs)
  | isSymb c = lexSymbol (c : cs)
  | isAlpha c = lexKW (c : cs)
lexer _ = error "Lexical Error!"

lexNum :: String -> [Token]
lexNum cs = case span isDigit cs of
  (num, rest) -> TokenNum (read num) : lexer rest

lexSymbol :: String -> [Token]
lexSymbol cs = case span isSymb cs of
  ("+", rest) -> TokenAdd : lexer rest
  ("-", rest) -> TokenSub : lexer rest
  ("*", rest) -> TokenMul : lexer rest
  ("&&", rest) -> TokenAnd : lexer rest
  ("||", rest) -> TokenOr : lexer rest
  ("==", rest) -> TokenDbEq : lexer rest
  ("!=", rest) -> TokenNotEq : lexer rest
  (">", rest) -> TokenGt : lexer rest
  ("<", rest) -> TokenLt : lexer rest
  (">=", rest) -> TokenGte : lexer rest
  ("\\", rest) -> TokenLam : lexer rest
  ("->", rest) -> TokenArrow : lexer rest
  ("=", rest) -> TokenEq : lexer rest
  (":", rest) -> TokenColon : lexer rest
  _ -> error "Lexical error: invalid symbol!"

lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of
  ("true", rest) -> TokenTrue : lexer rest
  ("false", rest) -> TokenFalse : lexer rest
  ("if", rest) -> TokenIf : lexer rest
  ("then", rest) -> TokenThen : lexer rest
  ("else", rest) -> TokenElse : lexer rest
  ("let", rest) -> TokenLet : lexer rest
  ("in", rest) -> TokenIn : lexer rest
  ("Num", rest) -> TokenNumber : lexer rest
  ("Bool", rest) -> TokenBoolean : lexer rest
  ("case", rest) -> TokenCase : lexer rest
  ("of", rest) -> TokenOf : lexer rest
  (var, rest) -> TokenVar var : lexer rest
