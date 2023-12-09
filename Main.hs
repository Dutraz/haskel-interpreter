-- happy Parser.y
-- parser (lexer "if true && false then 4 + 5 else 2 + 4")
-- eval $ parser $ lexer "if true && false then 4 + 5 else 2 + 4"
-- eval $ typecheck $ parser $ lexer "if true && false then 4 + 5 else 2 + 4"
-- eval $ typecheck $ parser $ lexer "if true || false then 4 - 5 else 2 * 4"
-- cat example.mylang | runghc ./Main
module Main where

import Lexer
import Parser
import TypeChecker
import Interpreter

main = getContents >>= print . eval. typecheck . parser . lexer