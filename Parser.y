{
module Parser where

import Lexer 
}

%name parser 
%tokentype { Token }
%error { parserError } 

%left '*'
%left '+' '-'

%token 
    num         { TokenNum $$ }
    '+'         { TokenAdd }
    '-'         { TokenSub }
    '*'         { TokenMul }
    "&&"        { TokenAnd }
    "||"        { TokenOr }
    "=="        { TokenDbEq }
    "!="        { TokenNotEq }
    '<'         { TokenLt }
    "<="        { TokenLte }
    '>'         { TokenGt }
    ">="        { TokenGte }
    true        { TokenTrue }
    false       { TokenFalse }
    if          { TokenIf }
    then        { TokenThen }
    else        { TokenElse }
    var         { TokenVar $$ }
    '\\'        { TokenLam }
    "->"        { TokenArrow }
    '('         { TokenLParen }
    ')'         { TokenRParen }
    '='         { TokenEq }
    let         { TokenLet }
    in          { TokenIn } 
    ':'         { TokenColon }
    Num         { TokenNumber }
    Bool        { TokenBoolean }
    case        { TokenCase }
    of          { TokenOf }
    ';'         { TokenSemicolon }
%%

Exp         : num                         { Num $1 }
            | true                        { BTrue }
            | false                       { BFalse }
            | Exp '+' Exp                 { Add $1 $3 }
            | Exp '-' Exp                 { Sub $1 $3 }
            | Exp '*' Exp                 { Mul $1 $3 }
            | Exp "&&" Exp                { And $1 $3 }
            | Exp "||" Exp                { Or $1 $3 }
            | Exp "==" Exp                { Equal $1 $3 }
            | Exp "!=" Exp                { NotEqual $1 $3 }
            | Exp '<' Exp                 { Less $1 $3 }
            | Exp "<=" Exp                { LessEqual $1 $3 }
            | Exp '>' Exp                 { Greater $1 $3 }
            | Exp ">=" Exp                { GreaterEqual $1 $3 }
            | if Exp then Exp else Exp    { If $2 $4 $6 }
            | var                         { Var $1 }
            | '\\' var ':' Type "->" Exp  { Lam $2 $4 $6 }
            | Exp Exp                     { App $1 $2 }
            | '(' Exp ')'                 { Paren $2 }
            | let var '=' Exp in Exp      { Let $2 $4 $6 }
            | case Exp of '(' Cases ')'   { Case $2 (Cases $5) }

Type        : Bool                        { TBool }
            | Num                         { TNum }
            | '(' Type "->" Type ')'      { TFun $2 $4 }

SCase       : Exp "->" Exp ';'            { SCase $1 $3 }

Cases       : SCase                       { [$1] }
            | Cases SCase                 { $2 : $1 }

{

parserError :: [Token] -> a 
parserError _ = error "Syntax error!"

}