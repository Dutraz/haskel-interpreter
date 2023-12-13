{-# OPTIONS_GHC -w #-}
module Parser where

import Lexer
import qualified Data.Array as Happy_Data_Array
import qualified Data.Bits as Bits
import Control.Applicative(Applicative(..))
import Control.Monad (ap)

-- parser produced by Happy Version 1.20.0

data HappyAbsSyn t4 t5 t6 t7
	= HappyTerminal (Token)
	| HappyErrorToken Prelude.Int
	| HappyAbsSyn4 t4
	| HappyAbsSyn5 t5
	| HappyAbsSyn6 t6
	| HappyAbsSyn7 t7

happyExpList :: Happy_Data_Array.Array Prelude.Int Prelude.Int
happyExpList = Happy_Data_Array.listArray (0,359) ([128,19256,16392,0,0,0,0,61440,26623,265,0,0,0,0,0,57346,8492,0,0,0,0,1,64,9628,4,16384,0,16,2407,63489,46079,388,0,256,65024,27903,33,0,512,65408,19327,8,0,0,32,4814,4098,26368,265,32776,33971,1024,22976,66,57346,8492,256,38512,32784,14336,2123,64,9628,8196,52736,530,16,2407,2049,45952,132,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6144,0,0,0,0,0,0,32768,14336,2123,0,1024,3,0,0,16,2407,1,32768,0,49156,16985,65024,11519,35,0,8,0,2048,6,0,0,0,0,61440,30719,265,32776,33971,0,8192,0,57346,8492,256,38512,32784,16383,2127,0,0,8192,52736,534,0,0,0,0,0,49156,16985,0,0,0,0,0,0,2048,6,0,0,0,1024,61440,26623,1289,0,0,0,0,0,0
	])

{-# NOINLINE happyExpListPerState #-}
happyExpListPerState st =
    token_strs_expected
  where token_strs = ["error","%dummy","%start_parser","Exp","Type","SCase","Cases","num","'+'","'-'","'*'","\"&&\"","\"||\"","\"==\"","\"!=\"","'<'","\"<=\"","'>'","\">=\"","true","false","if","then","else","var","'\\\\'","\"->\"","'('","')'","'='","let","in","':'","Num","Bool","case","of","';'","%eof"]
        bit_start = st Prelude.* 39
        bit_end = (st Prelude.+ 1) Prelude.* 39
        read_bit = readArrayBit happyExpList
        bits = Prelude.map read_bit [bit_start..bit_end Prelude.- 1]
        bits_indexed = Prelude.zip bits [0..38]
        token_strs_expected = Prelude.concatMap f bits_indexed
        f (Prelude.False, _) = []
        f (Prelude.True, nr) = [token_strs Prelude.!! nr]

action_0 (8) = happyShift action_2
action_0 (20) = happyShift action_4
action_0 (21) = happyShift action_5
action_0 (22) = happyShift action_6
action_0 (25) = happyShift action_7
action_0 (26) = happyShift action_8
action_0 (28) = happyShift action_9
action_0 (31) = happyShift action_10
action_0 (36) = happyShift action_11
action_0 (4) = happyGoto action_3
action_0 _ = happyFail (happyExpListPerState 0)

action_1 (8) = happyShift action_2
action_1 _ = happyFail (happyExpListPerState 1)

action_2 _ = happyReduce_1

action_3 (8) = happyShift action_2
action_3 (9) = happyShift action_18
action_3 (10) = happyShift action_19
action_3 (11) = happyShift action_20
action_3 (12) = happyShift action_21
action_3 (13) = happyShift action_22
action_3 (14) = happyShift action_23
action_3 (15) = happyShift action_24
action_3 (16) = happyShift action_25
action_3 (17) = happyShift action_26
action_3 (18) = happyShift action_27
action_3 (19) = happyShift action_28
action_3 (20) = happyShift action_4
action_3 (21) = happyShift action_5
action_3 (22) = happyShift action_6
action_3 (25) = happyShift action_7
action_3 (26) = happyShift action_8
action_3 (28) = happyShift action_9
action_3 (31) = happyShift action_10
action_3 (36) = happyShift action_11
action_3 (39) = happyAccept
action_3 (4) = happyGoto action_17
action_3 _ = happyFail (happyExpListPerState 3)

action_4 _ = happyReduce_2

action_5 _ = happyReduce_3

action_6 (8) = happyShift action_2
action_6 (20) = happyShift action_4
action_6 (21) = happyShift action_5
action_6 (22) = happyShift action_6
action_6 (25) = happyShift action_7
action_6 (26) = happyShift action_8
action_6 (28) = happyShift action_9
action_6 (31) = happyShift action_10
action_6 (36) = happyShift action_11
action_6 (4) = happyGoto action_16
action_6 _ = happyFail (happyExpListPerState 6)

action_7 _ = happyReduce_16

action_8 (25) = happyShift action_15
action_8 _ = happyFail (happyExpListPerState 8)

action_9 (8) = happyShift action_2
action_9 (20) = happyShift action_4
action_9 (21) = happyShift action_5
action_9 (22) = happyShift action_6
action_9 (25) = happyShift action_7
action_9 (26) = happyShift action_8
action_9 (28) = happyShift action_9
action_9 (31) = happyShift action_10
action_9 (36) = happyShift action_11
action_9 (4) = happyGoto action_14
action_9 _ = happyFail (happyExpListPerState 9)

action_10 (25) = happyShift action_13
action_10 _ = happyFail (happyExpListPerState 10)

action_11 (8) = happyShift action_2
action_11 (20) = happyShift action_4
action_11 (21) = happyShift action_5
action_11 (22) = happyShift action_6
action_11 (25) = happyShift action_7
action_11 (26) = happyShift action_8
action_11 (28) = happyShift action_9
action_11 (31) = happyShift action_10
action_11 (36) = happyShift action_11
action_11 (4) = happyGoto action_12
action_11 _ = happyFail (happyExpListPerState 11)

action_12 (8) = happyShift action_2
action_12 (9) = happyShift action_18
action_12 (10) = happyShift action_19
action_12 (11) = happyShift action_20
action_12 (12) = happyShift action_21
action_12 (13) = happyShift action_22
action_12 (14) = happyShift action_23
action_12 (15) = happyShift action_24
action_12 (16) = happyShift action_25
action_12 (17) = happyShift action_26
action_12 (18) = happyShift action_27
action_12 (19) = happyShift action_28
action_12 (20) = happyShift action_4
action_12 (21) = happyShift action_5
action_12 (22) = happyShift action_6
action_12 (25) = happyShift action_7
action_12 (26) = happyShift action_8
action_12 (28) = happyShift action_9
action_12 (31) = happyShift action_10
action_12 (36) = happyShift action_11
action_12 (37) = happyShift action_44
action_12 (4) = happyGoto action_17
action_12 _ = happyFail (happyExpListPerState 12)

action_13 (30) = happyShift action_43
action_13 _ = happyFail (happyExpListPerState 13)

action_14 (8) = happyShift action_2
action_14 (9) = happyShift action_18
action_14 (10) = happyShift action_19
action_14 (11) = happyShift action_20
action_14 (12) = happyShift action_21
action_14 (13) = happyShift action_22
action_14 (14) = happyShift action_23
action_14 (15) = happyShift action_24
action_14 (16) = happyShift action_25
action_14 (17) = happyShift action_26
action_14 (18) = happyShift action_27
action_14 (19) = happyShift action_28
action_14 (20) = happyShift action_4
action_14 (21) = happyShift action_5
action_14 (22) = happyShift action_6
action_14 (25) = happyShift action_7
action_14 (26) = happyShift action_8
action_14 (28) = happyShift action_9
action_14 (29) = happyShift action_42
action_14 (31) = happyShift action_10
action_14 (36) = happyShift action_11
action_14 (4) = happyGoto action_17
action_14 _ = happyFail (happyExpListPerState 14)

action_15 (33) = happyShift action_41
action_15 _ = happyFail (happyExpListPerState 15)

action_16 (8) = happyShift action_2
action_16 (9) = happyShift action_18
action_16 (10) = happyShift action_19
action_16 (11) = happyShift action_20
action_16 (12) = happyShift action_21
action_16 (13) = happyShift action_22
action_16 (14) = happyShift action_23
action_16 (15) = happyShift action_24
action_16 (16) = happyShift action_25
action_16 (17) = happyShift action_26
action_16 (18) = happyShift action_27
action_16 (19) = happyShift action_28
action_16 (20) = happyShift action_4
action_16 (21) = happyShift action_5
action_16 (22) = happyShift action_6
action_16 (23) = happyShift action_40
action_16 (25) = happyShift action_7
action_16 (26) = happyShift action_8
action_16 (28) = happyShift action_9
action_16 (31) = happyShift action_10
action_16 (36) = happyShift action_11
action_16 (4) = happyGoto action_17
action_16 _ = happyFail (happyExpListPerState 16)

action_17 (8) = happyShift action_2
action_17 (9) = happyShift action_18
action_17 (10) = happyShift action_19
action_17 (11) = happyShift action_20
action_17 (12) = happyShift action_21
action_17 (13) = happyShift action_22
action_17 (14) = happyShift action_23
action_17 (15) = happyShift action_24
action_17 (16) = happyShift action_25
action_17 (17) = happyShift action_26
action_17 (18) = happyShift action_27
action_17 (19) = happyShift action_28
action_17 (20) = happyShift action_4
action_17 (21) = happyShift action_5
action_17 (22) = happyShift action_6
action_17 (25) = happyShift action_7
action_17 (26) = happyShift action_8
action_17 (28) = happyShift action_9
action_17 (31) = happyShift action_10
action_17 (36) = happyShift action_11
action_17 (4) = happyGoto action_17
action_17 _ = happyReduce_18

action_18 (8) = happyShift action_2
action_18 (20) = happyShift action_4
action_18 (21) = happyShift action_5
action_18 (22) = happyShift action_6
action_18 (25) = happyShift action_7
action_18 (26) = happyShift action_8
action_18 (28) = happyShift action_9
action_18 (31) = happyShift action_10
action_18 (36) = happyShift action_11
action_18 (4) = happyGoto action_39
action_18 _ = happyFail (happyExpListPerState 18)

action_19 (8) = happyShift action_2
action_19 (20) = happyShift action_4
action_19 (21) = happyShift action_5
action_19 (22) = happyShift action_6
action_19 (25) = happyShift action_7
action_19 (26) = happyShift action_8
action_19 (28) = happyShift action_9
action_19 (31) = happyShift action_10
action_19 (36) = happyShift action_11
action_19 (4) = happyGoto action_38
action_19 _ = happyFail (happyExpListPerState 19)

action_20 (8) = happyShift action_2
action_20 (20) = happyShift action_4
action_20 (21) = happyShift action_5
action_20 (22) = happyShift action_6
action_20 (25) = happyShift action_7
action_20 (26) = happyShift action_8
action_20 (28) = happyShift action_9
action_20 (31) = happyShift action_10
action_20 (36) = happyShift action_11
action_20 (4) = happyGoto action_37
action_20 _ = happyFail (happyExpListPerState 20)

action_21 (8) = happyShift action_2
action_21 (20) = happyShift action_4
action_21 (21) = happyShift action_5
action_21 (22) = happyShift action_6
action_21 (25) = happyShift action_7
action_21 (26) = happyShift action_8
action_21 (28) = happyShift action_9
action_21 (31) = happyShift action_10
action_21 (36) = happyShift action_11
action_21 (4) = happyGoto action_36
action_21 _ = happyFail (happyExpListPerState 21)

action_22 (8) = happyShift action_2
action_22 (20) = happyShift action_4
action_22 (21) = happyShift action_5
action_22 (22) = happyShift action_6
action_22 (25) = happyShift action_7
action_22 (26) = happyShift action_8
action_22 (28) = happyShift action_9
action_22 (31) = happyShift action_10
action_22 (36) = happyShift action_11
action_22 (4) = happyGoto action_35
action_22 _ = happyFail (happyExpListPerState 22)

action_23 (8) = happyShift action_2
action_23 (20) = happyShift action_4
action_23 (21) = happyShift action_5
action_23 (22) = happyShift action_6
action_23 (25) = happyShift action_7
action_23 (26) = happyShift action_8
action_23 (28) = happyShift action_9
action_23 (31) = happyShift action_10
action_23 (36) = happyShift action_11
action_23 (4) = happyGoto action_34
action_23 _ = happyFail (happyExpListPerState 23)

action_24 (8) = happyShift action_2
action_24 (20) = happyShift action_4
action_24 (21) = happyShift action_5
action_24 (22) = happyShift action_6
action_24 (25) = happyShift action_7
action_24 (26) = happyShift action_8
action_24 (28) = happyShift action_9
action_24 (31) = happyShift action_10
action_24 (36) = happyShift action_11
action_24 (4) = happyGoto action_33
action_24 _ = happyFail (happyExpListPerState 24)

action_25 (8) = happyShift action_2
action_25 (20) = happyShift action_4
action_25 (21) = happyShift action_5
action_25 (22) = happyShift action_6
action_25 (25) = happyShift action_7
action_25 (26) = happyShift action_8
action_25 (28) = happyShift action_9
action_25 (31) = happyShift action_10
action_25 (36) = happyShift action_11
action_25 (4) = happyGoto action_32
action_25 _ = happyFail (happyExpListPerState 25)

action_26 (8) = happyShift action_2
action_26 (20) = happyShift action_4
action_26 (21) = happyShift action_5
action_26 (22) = happyShift action_6
action_26 (25) = happyShift action_7
action_26 (26) = happyShift action_8
action_26 (28) = happyShift action_9
action_26 (31) = happyShift action_10
action_26 (36) = happyShift action_11
action_26 (4) = happyGoto action_31
action_26 _ = happyFail (happyExpListPerState 26)

action_27 (8) = happyShift action_2
action_27 (20) = happyShift action_4
action_27 (21) = happyShift action_5
action_27 (22) = happyShift action_6
action_27 (25) = happyShift action_7
action_27 (26) = happyShift action_8
action_27 (28) = happyShift action_9
action_27 (31) = happyShift action_10
action_27 (36) = happyShift action_11
action_27 (4) = happyGoto action_30
action_27 _ = happyFail (happyExpListPerState 27)

action_28 (8) = happyShift action_2
action_28 (20) = happyShift action_4
action_28 (21) = happyShift action_5
action_28 (22) = happyShift action_6
action_28 (25) = happyShift action_7
action_28 (26) = happyShift action_8
action_28 (28) = happyShift action_9
action_28 (31) = happyShift action_10
action_28 (36) = happyShift action_11
action_28 (4) = happyGoto action_29
action_28 _ = happyFail (happyExpListPerState 28)

action_29 (8) = happyShift action_2
action_29 (9) = happyShift action_18
action_29 (10) = happyShift action_19
action_29 (11) = happyShift action_20
action_29 (12) = happyShift action_21
action_29 (13) = happyShift action_22
action_29 (14) = happyShift action_23
action_29 (15) = happyShift action_24
action_29 (16) = happyShift action_25
action_29 (17) = happyShift action_26
action_29 (18) = happyShift action_27
action_29 (19) = happyShift action_28
action_29 (20) = happyShift action_4
action_29 (21) = happyShift action_5
action_29 (22) = happyShift action_6
action_29 (25) = happyShift action_7
action_29 (26) = happyShift action_8
action_29 (28) = happyShift action_9
action_29 (31) = happyShift action_10
action_29 (36) = happyShift action_11
action_29 (4) = happyGoto action_17
action_29 _ = happyReduce_14

action_30 (8) = happyShift action_2
action_30 (9) = happyShift action_18
action_30 (10) = happyShift action_19
action_30 (11) = happyShift action_20
action_30 (12) = happyShift action_21
action_30 (13) = happyShift action_22
action_30 (14) = happyShift action_23
action_30 (15) = happyShift action_24
action_30 (16) = happyShift action_25
action_30 (17) = happyShift action_26
action_30 (18) = happyShift action_27
action_30 (19) = happyShift action_28
action_30 (20) = happyShift action_4
action_30 (21) = happyShift action_5
action_30 (22) = happyShift action_6
action_30 (25) = happyShift action_7
action_30 (26) = happyShift action_8
action_30 (28) = happyShift action_9
action_30 (31) = happyShift action_10
action_30 (36) = happyShift action_11
action_30 (4) = happyGoto action_17
action_30 _ = happyReduce_13

action_31 (8) = happyShift action_2
action_31 (9) = happyShift action_18
action_31 (10) = happyShift action_19
action_31 (11) = happyShift action_20
action_31 (12) = happyShift action_21
action_31 (13) = happyShift action_22
action_31 (14) = happyShift action_23
action_31 (15) = happyShift action_24
action_31 (16) = happyShift action_25
action_31 (17) = happyShift action_26
action_31 (18) = happyShift action_27
action_31 (19) = happyShift action_28
action_31 (20) = happyShift action_4
action_31 (21) = happyShift action_5
action_31 (22) = happyShift action_6
action_31 (25) = happyShift action_7
action_31 (26) = happyShift action_8
action_31 (28) = happyShift action_9
action_31 (31) = happyShift action_10
action_31 (36) = happyShift action_11
action_31 (4) = happyGoto action_17
action_31 _ = happyReduce_12

action_32 (8) = happyShift action_2
action_32 (9) = happyShift action_18
action_32 (10) = happyShift action_19
action_32 (11) = happyShift action_20
action_32 (12) = happyShift action_21
action_32 (13) = happyShift action_22
action_32 (14) = happyShift action_23
action_32 (15) = happyShift action_24
action_32 (16) = happyShift action_25
action_32 (17) = happyShift action_26
action_32 (18) = happyShift action_27
action_32 (19) = happyShift action_28
action_32 (20) = happyShift action_4
action_32 (21) = happyShift action_5
action_32 (22) = happyShift action_6
action_32 (25) = happyShift action_7
action_32 (26) = happyShift action_8
action_32 (28) = happyShift action_9
action_32 (31) = happyShift action_10
action_32 (36) = happyShift action_11
action_32 (4) = happyGoto action_17
action_32 _ = happyReduce_11

action_33 (8) = happyShift action_2
action_33 (9) = happyShift action_18
action_33 (10) = happyShift action_19
action_33 (11) = happyShift action_20
action_33 (12) = happyShift action_21
action_33 (13) = happyShift action_22
action_33 (14) = happyShift action_23
action_33 (15) = happyShift action_24
action_33 (16) = happyShift action_25
action_33 (17) = happyShift action_26
action_33 (18) = happyShift action_27
action_33 (19) = happyShift action_28
action_33 (20) = happyShift action_4
action_33 (21) = happyShift action_5
action_33 (22) = happyShift action_6
action_33 (25) = happyShift action_7
action_33 (26) = happyShift action_8
action_33 (28) = happyShift action_9
action_33 (31) = happyShift action_10
action_33 (36) = happyShift action_11
action_33 (4) = happyGoto action_17
action_33 _ = happyReduce_10

action_34 (8) = happyShift action_2
action_34 (9) = happyShift action_18
action_34 (10) = happyShift action_19
action_34 (11) = happyShift action_20
action_34 (12) = happyShift action_21
action_34 (13) = happyShift action_22
action_34 (14) = happyShift action_23
action_34 (15) = happyShift action_24
action_34 (16) = happyShift action_25
action_34 (17) = happyShift action_26
action_34 (18) = happyShift action_27
action_34 (19) = happyShift action_28
action_34 (20) = happyShift action_4
action_34 (21) = happyShift action_5
action_34 (22) = happyShift action_6
action_34 (25) = happyShift action_7
action_34 (26) = happyShift action_8
action_34 (28) = happyShift action_9
action_34 (31) = happyShift action_10
action_34 (36) = happyShift action_11
action_34 (4) = happyGoto action_17
action_34 _ = happyReduce_9

action_35 (8) = happyShift action_2
action_35 (9) = happyShift action_18
action_35 (10) = happyShift action_19
action_35 (11) = happyShift action_20
action_35 (12) = happyShift action_21
action_35 (13) = happyShift action_22
action_35 (14) = happyShift action_23
action_35 (15) = happyShift action_24
action_35 (16) = happyShift action_25
action_35 (17) = happyShift action_26
action_35 (18) = happyShift action_27
action_35 (19) = happyShift action_28
action_35 (20) = happyShift action_4
action_35 (21) = happyShift action_5
action_35 (22) = happyShift action_6
action_35 (25) = happyShift action_7
action_35 (26) = happyShift action_8
action_35 (28) = happyShift action_9
action_35 (31) = happyShift action_10
action_35 (36) = happyShift action_11
action_35 (4) = happyGoto action_17
action_35 _ = happyReduce_8

action_36 (8) = happyShift action_2
action_36 (9) = happyShift action_18
action_36 (10) = happyShift action_19
action_36 (11) = happyShift action_20
action_36 (12) = happyShift action_21
action_36 (13) = happyShift action_22
action_36 (14) = happyShift action_23
action_36 (15) = happyShift action_24
action_36 (16) = happyShift action_25
action_36 (17) = happyShift action_26
action_36 (18) = happyShift action_27
action_36 (19) = happyShift action_28
action_36 (20) = happyShift action_4
action_36 (21) = happyShift action_5
action_36 (22) = happyShift action_6
action_36 (25) = happyShift action_7
action_36 (26) = happyShift action_8
action_36 (28) = happyShift action_9
action_36 (31) = happyShift action_10
action_36 (36) = happyShift action_11
action_36 (4) = happyGoto action_17
action_36 _ = happyReduce_7

action_37 (8) = happyShift action_2
action_37 (9) = happyShift action_18
action_37 (10) = happyShift action_19
action_37 (12) = happyShift action_21
action_37 (13) = happyShift action_22
action_37 (14) = happyShift action_23
action_37 (15) = happyShift action_24
action_37 (16) = happyShift action_25
action_37 (17) = happyShift action_26
action_37 (18) = happyShift action_27
action_37 (19) = happyShift action_28
action_37 (20) = happyShift action_4
action_37 (21) = happyShift action_5
action_37 (22) = happyShift action_6
action_37 (25) = happyShift action_7
action_37 (26) = happyShift action_8
action_37 (28) = happyShift action_9
action_37 (31) = happyShift action_10
action_37 (36) = happyShift action_11
action_37 (4) = happyGoto action_17
action_37 _ = happyReduce_6

action_38 (8) = happyShift action_2
action_38 (12) = happyShift action_21
action_38 (13) = happyShift action_22
action_38 (14) = happyShift action_23
action_38 (15) = happyShift action_24
action_38 (16) = happyShift action_25
action_38 (17) = happyShift action_26
action_38 (18) = happyShift action_27
action_38 (19) = happyShift action_28
action_38 (20) = happyShift action_4
action_38 (21) = happyShift action_5
action_38 (22) = happyShift action_6
action_38 (25) = happyShift action_7
action_38 (26) = happyShift action_8
action_38 (28) = happyShift action_9
action_38 (31) = happyShift action_10
action_38 (36) = happyShift action_11
action_38 (4) = happyGoto action_17
action_38 _ = happyReduce_5

action_39 (8) = happyShift action_2
action_39 (12) = happyShift action_21
action_39 (13) = happyShift action_22
action_39 (14) = happyShift action_23
action_39 (15) = happyShift action_24
action_39 (16) = happyShift action_25
action_39 (17) = happyShift action_26
action_39 (18) = happyShift action_27
action_39 (19) = happyShift action_28
action_39 (20) = happyShift action_4
action_39 (21) = happyShift action_5
action_39 (22) = happyShift action_6
action_39 (25) = happyShift action_7
action_39 (26) = happyShift action_8
action_39 (28) = happyShift action_9
action_39 (31) = happyShift action_10
action_39 (36) = happyShift action_11
action_39 (4) = happyGoto action_17
action_39 _ = happyReduce_4

action_40 (8) = happyShift action_2
action_40 (20) = happyShift action_4
action_40 (21) = happyShift action_5
action_40 (22) = happyShift action_6
action_40 (25) = happyShift action_7
action_40 (26) = happyShift action_8
action_40 (28) = happyShift action_9
action_40 (31) = happyShift action_10
action_40 (36) = happyShift action_11
action_40 (4) = happyGoto action_51
action_40 _ = happyFail (happyExpListPerState 40)

action_41 (28) = happyShift action_48
action_41 (34) = happyShift action_49
action_41 (35) = happyShift action_50
action_41 (5) = happyGoto action_47
action_41 _ = happyFail (happyExpListPerState 41)

action_42 _ = happyReduce_19

action_43 (8) = happyShift action_2
action_43 (20) = happyShift action_4
action_43 (21) = happyShift action_5
action_43 (22) = happyShift action_6
action_43 (25) = happyShift action_7
action_43 (26) = happyShift action_8
action_43 (28) = happyShift action_9
action_43 (31) = happyShift action_10
action_43 (36) = happyShift action_11
action_43 (4) = happyGoto action_46
action_43 _ = happyFail (happyExpListPerState 43)

action_44 (28) = happyShift action_45
action_44 _ = happyFail (happyExpListPerState 44)

action_45 (8) = happyShift action_2
action_45 (20) = happyShift action_4
action_45 (21) = happyShift action_5
action_45 (22) = happyShift action_6
action_45 (25) = happyShift action_7
action_45 (26) = happyShift action_8
action_45 (28) = happyShift action_9
action_45 (31) = happyShift action_10
action_45 (36) = happyShift action_11
action_45 (4) = happyGoto action_56
action_45 (6) = happyGoto action_57
action_45 (7) = happyGoto action_58
action_45 _ = happyFail (happyExpListPerState 45)

action_46 (8) = happyShift action_2
action_46 (9) = happyShift action_18
action_46 (10) = happyShift action_19
action_46 (11) = happyShift action_20
action_46 (12) = happyShift action_21
action_46 (13) = happyShift action_22
action_46 (14) = happyShift action_23
action_46 (15) = happyShift action_24
action_46 (16) = happyShift action_25
action_46 (17) = happyShift action_26
action_46 (18) = happyShift action_27
action_46 (19) = happyShift action_28
action_46 (20) = happyShift action_4
action_46 (21) = happyShift action_5
action_46 (22) = happyShift action_6
action_46 (25) = happyShift action_7
action_46 (26) = happyShift action_8
action_46 (28) = happyShift action_9
action_46 (31) = happyShift action_10
action_46 (32) = happyShift action_55
action_46 (36) = happyShift action_11
action_46 (4) = happyGoto action_17
action_46 _ = happyFail (happyExpListPerState 46)

action_47 (27) = happyShift action_54
action_47 _ = happyFail (happyExpListPerState 47)

action_48 (28) = happyShift action_48
action_48 (34) = happyShift action_49
action_48 (35) = happyShift action_50
action_48 (5) = happyGoto action_53
action_48 _ = happyFail (happyExpListPerState 48)

action_49 _ = happyReduce_23

action_50 _ = happyReduce_22

action_51 (8) = happyShift action_2
action_51 (9) = happyShift action_18
action_51 (10) = happyShift action_19
action_51 (11) = happyShift action_20
action_51 (12) = happyShift action_21
action_51 (13) = happyShift action_22
action_51 (14) = happyShift action_23
action_51 (15) = happyShift action_24
action_51 (16) = happyShift action_25
action_51 (17) = happyShift action_26
action_51 (18) = happyShift action_27
action_51 (19) = happyShift action_28
action_51 (20) = happyShift action_4
action_51 (21) = happyShift action_5
action_51 (22) = happyShift action_6
action_51 (24) = happyShift action_52
action_51 (25) = happyShift action_7
action_51 (26) = happyShift action_8
action_51 (28) = happyShift action_9
action_51 (31) = happyShift action_10
action_51 (36) = happyShift action_11
action_51 (4) = happyGoto action_17
action_51 _ = happyFail (happyExpListPerState 51)

action_52 (8) = happyShift action_2
action_52 (20) = happyShift action_4
action_52 (21) = happyShift action_5
action_52 (22) = happyShift action_6
action_52 (25) = happyShift action_7
action_52 (26) = happyShift action_8
action_52 (28) = happyShift action_9
action_52 (31) = happyShift action_10
action_52 (36) = happyShift action_11
action_52 (4) = happyGoto action_65
action_52 _ = happyFail (happyExpListPerState 52)

action_53 (27) = happyShift action_64
action_53 _ = happyFail (happyExpListPerState 53)

action_54 (8) = happyShift action_2
action_54 (20) = happyShift action_4
action_54 (21) = happyShift action_5
action_54 (22) = happyShift action_6
action_54 (25) = happyShift action_7
action_54 (26) = happyShift action_8
action_54 (28) = happyShift action_9
action_54 (31) = happyShift action_10
action_54 (36) = happyShift action_11
action_54 (4) = happyGoto action_63
action_54 _ = happyFail (happyExpListPerState 54)

action_55 (8) = happyShift action_2
action_55 (20) = happyShift action_4
action_55 (21) = happyShift action_5
action_55 (22) = happyShift action_6
action_55 (25) = happyShift action_7
action_55 (26) = happyShift action_8
action_55 (28) = happyShift action_9
action_55 (31) = happyShift action_10
action_55 (36) = happyShift action_11
action_55 (4) = happyGoto action_62
action_55 _ = happyFail (happyExpListPerState 55)

action_56 (8) = happyShift action_2
action_56 (9) = happyShift action_18
action_56 (10) = happyShift action_19
action_56 (11) = happyShift action_20
action_56 (12) = happyShift action_21
action_56 (13) = happyShift action_22
action_56 (14) = happyShift action_23
action_56 (15) = happyShift action_24
action_56 (16) = happyShift action_25
action_56 (17) = happyShift action_26
action_56 (18) = happyShift action_27
action_56 (19) = happyShift action_28
action_56 (20) = happyShift action_4
action_56 (21) = happyShift action_5
action_56 (22) = happyShift action_6
action_56 (25) = happyShift action_7
action_56 (26) = happyShift action_8
action_56 (27) = happyShift action_61
action_56 (28) = happyShift action_9
action_56 (31) = happyShift action_10
action_56 (36) = happyShift action_11
action_56 (4) = happyGoto action_17
action_56 _ = happyFail (happyExpListPerState 56)

action_57 _ = happyReduce_26

action_58 (8) = happyShift action_2
action_58 (20) = happyShift action_4
action_58 (21) = happyShift action_5
action_58 (22) = happyShift action_6
action_58 (25) = happyShift action_7
action_58 (26) = happyShift action_8
action_58 (28) = happyShift action_9
action_58 (29) = happyShift action_60
action_58 (31) = happyShift action_10
action_58 (36) = happyShift action_11
action_58 (4) = happyGoto action_56
action_58 (6) = happyGoto action_59
action_58 _ = happyFail (happyExpListPerState 58)

action_59 _ = happyReduce_27

action_60 _ = happyReduce_21

action_61 (8) = happyShift action_2
action_61 (20) = happyShift action_4
action_61 (21) = happyShift action_5
action_61 (22) = happyShift action_6
action_61 (25) = happyShift action_7
action_61 (26) = happyShift action_8
action_61 (28) = happyShift action_9
action_61 (31) = happyShift action_10
action_61 (36) = happyShift action_11
action_61 (4) = happyGoto action_67
action_61 _ = happyFail (happyExpListPerState 61)

action_62 (8) = happyShift action_2
action_62 (9) = happyShift action_18
action_62 (10) = happyShift action_19
action_62 (11) = happyShift action_20
action_62 (12) = happyShift action_21
action_62 (13) = happyShift action_22
action_62 (14) = happyShift action_23
action_62 (15) = happyShift action_24
action_62 (16) = happyShift action_25
action_62 (17) = happyShift action_26
action_62 (18) = happyShift action_27
action_62 (19) = happyShift action_28
action_62 (20) = happyShift action_4
action_62 (21) = happyShift action_5
action_62 (22) = happyShift action_6
action_62 (25) = happyShift action_7
action_62 (26) = happyShift action_8
action_62 (28) = happyShift action_9
action_62 (31) = happyShift action_10
action_62 (36) = happyShift action_11
action_62 (4) = happyGoto action_17
action_62 _ = happyReduce_20

action_63 (8) = happyShift action_2
action_63 (9) = happyShift action_18
action_63 (10) = happyShift action_19
action_63 (11) = happyShift action_20
action_63 (12) = happyShift action_21
action_63 (13) = happyShift action_22
action_63 (14) = happyShift action_23
action_63 (15) = happyShift action_24
action_63 (16) = happyShift action_25
action_63 (17) = happyShift action_26
action_63 (18) = happyShift action_27
action_63 (19) = happyShift action_28
action_63 (20) = happyShift action_4
action_63 (21) = happyShift action_5
action_63 (22) = happyShift action_6
action_63 (25) = happyShift action_7
action_63 (26) = happyShift action_8
action_63 (28) = happyShift action_9
action_63 (31) = happyShift action_10
action_63 (36) = happyShift action_11
action_63 (4) = happyGoto action_17
action_63 _ = happyReduce_17

action_64 (28) = happyShift action_48
action_64 (34) = happyShift action_49
action_64 (35) = happyShift action_50
action_64 (5) = happyGoto action_66
action_64 _ = happyFail (happyExpListPerState 64)

action_65 (8) = happyShift action_2
action_65 (9) = happyShift action_18
action_65 (10) = happyShift action_19
action_65 (11) = happyShift action_20
action_65 (12) = happyShift action_21
action_65 (13) = happyShift action_22
action_65 (14) = happyShift action_23
action_65 (15) = happyShift action_24
action_65 (16) = happyShift action_25
action_65 (17) = happyShift action_26
action_65 (18) = happyShift action_27
action_65 (19) = happyShift action_28
action_65 (20) = happyShift action_4
action_65 (21) = happyShift action_5
action_65 (22) = happyShift action_6
action_65 (25) = happyShift action_7
action_65 (26) = happyShift action_8
action_65 (28) = happyShift action_9
action_65 (31) = happyShift action_10
action_65 (36) = happyShift action_11
action_65 (4) = happyGoto action_17
action_65 _ = happyReduce_15

action_66 (29) = happyShift action_69
action_66 _ = happyFail (happyExpListPerState 66)

action_67 (8) = happyShift action_2
action_67 (9) = happyShift action_18
action_67 (10) = happyShift action_19
action_67 (11) = happyShift action_20
action_67 (12) = happyShift action_21
action_67 (13) = happyShift action_22
action_67 (14) = happyShift action_23
action_67 (15) = happyShift action_24
action_67 (16) = happyShift action_25
action_67 (17) = happyShift action_26
action_67 (18) = happyShift action_27
action_67 (19) = happyShift action_28
action_67 (20) = happyShift action_4
action_67 (21) = happyShift action_5
action_67 (22) = happyShift action_6
action_67 (25) = happyShift action_7
action_67 (26) = happyShift action_8
action_67 (28) = happyShift action_9
action_67 (31) = happyShift action_10
action_67 (36) = happyShift action_11
action_67 (38) = happyShift action_68
action_67 (4) = happyGoto action_17
action_67 _ = happyFail (happyExpListPerState 67)

action_68 _ = happyReduce_25

action_69 _ = happyReduce_24

happyReduce_1 = happySpecReduce_1  4 happyReduction_1
happyReduction_1 (HappyTerminal (TokenNum happy_var_1))
	 =  HappyAbsSyn4
		 (Num happy_var_1
	)
happyReduction_1 _  = notHappyAtAll 

happyReduce_2 = happySpecReduce_1  4 happyReduction_2
happyReduction_2 _
	 =  HappyAbsSyn4
		 (BTrue
	)

happyReduce_3 = happySpecReduce_1  4 happyReduction_3
happyReduction_3 _
	 =  HappyAbsSyn4
		 (BFalse
	)

happyReduce_4 = happySpecReduce_3  4 happyReduction_4
happyReduction_4 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Add happy_var_1 happy_var_3
	)
happyReduction_4 _ _ _  = notHappyAtAll 

happyReduce_5 = happySpecReduce_3  4 happyReduction_5
happyReduction_5 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Sub happy_var_1 happy_var_3
	)
happyReduction_5 _ _ _  = notHappyAtAll 

happyReduce_6 = happySpecReduce_3  4 happyReduction_6
happyReduction_6 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Mul happy_var_1 happy_var_3
	)
happyReduction_6 _ _ _  = notHappyAtAll 

happyReduce_7 = happySpecReduce_3  4 happyReduction_7
happyReduction_7 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (And happy_var_1 happy_var_3
	)
happyReduction_7 _ _ _  = notHappyAtAll 

happyReduce_8 = happySpecReduce_3  4 happyReduction_8
happyReduction_8 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Or happy_var_1 happy_var_3
	)
happyReduction_8 _ _ _  = notHappyAtAll 

happyReduce_9 = happySpecReduce_3  4 happyReduction_9
happyReduction_9 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Equal happy_var_1 happy_var_3
	)
happyReduction_9 _ _ _  = notHappyAtAll 

happyReduce_10 = happySpecReduce_3  4 happyReduction_10
happyReduction_10 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (NotEqual happy_var_1 happy_var_3
	)
happyReduction_10 _ _ _  = notHappyAtAll 

happyReduce_11 = happySpecReduce_3  4 happyReduction_11
happyReduction_11 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Less happy_var_1 happy_var_3
	)
happyReduction_11 _ _ _  = notHappyAtAll 

happyReduce_12 = happySpecReduce_3  4 happyReduction_12
happyReduction_12 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (LessEqual happy_var_1 happy_var_3
	)
happyReduction_12 _ _ _  = notHappyAtAll 

happyReduce_13 = happySpecReduce_3  4 happyReduction_13
happyReduction_13 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (Greater happy_var_1 happy_var_3
	)
happyReduction_13 _ _ _  = notHappyAtAll 

happyReduce_14 = happySpecReduce_3  4 happyReduction_14
happyReduction_14 (HappyAbsSyn4  happy_var_3)
	_
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (GreaterEqual happy_var_1 happy_var_3
	)
happyReduction_14 _ _ _  = notHappyAtAll 

happyReduce_15 = happyReduce 6 4 happyReduction_15
happyReduction_15 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (If happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_16 = happySpecReduce_1  4 happyReduction_16
happyReduction_16 (HappyTerminal (TokenVar happy_var_1))
	 =  HappyAbsSyn4
		 (Var happy_var_1
	)
happyReduction_16 _  = notHappyAtAll 

happyReduce_17 = happyReduce 6 4 happyReduction_17
happyReduction_17 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Lam happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_18 = happySpecReduce_2  4 happyReduction_18
happyReduction_18 (HappyAbsSyn4  happy_var_2)
	(HappyAbsSyn4  happy_var_1)
	 =  HappyAbsSyn4
		 (App happy_var_1 happy_var_2
	)
happyReduction_18 _ _  = notHappyAtAll 

happyReduce_19 = happySpecReduce_3  4 happyReduction_19
happyReduction_19 _
	(HappyAbsSyn4  happy_var_2)
	_
	 =  HappyAbsSyn4
		 (Paren happy_var_2
	)
happyReduction_19 _ _ _  = notHappyAtAll 

happyReduce_20 = happyReduce 6 4 happyReduction_20
happyReduction_20 ((HappyAbsSyn4  happy_var_6) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyTerminal (TokenVar happy_var_2)) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Let happy_var_2 happy_var_4 happy_var_6
	) `HappyStk` happyRest

happyReduce_21 = happyReduce 6 4 happyReduction_21
happyReduction_21 (_ `HappyStk`
	(HappyAbsSyn7  happy_var_5) `HappyStk`
	_ `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn4
		 (Case happy_var_2 (Cases happy_var_5)
	) `HappyStk` happyRest

happyReduce_22 = happySpecReduce_1  5 happyReduction_22
happyReduction_22 _
	 =  HappyAbsSyn5
		 (TBool
	)

happyReduce_23 = happySpecReduce_1  5 happyReduction_23
happyReduction_23 _
	 =  HappyAbsSyn5
		 (TNum
	)

happyReduce_24 = happyReduce 5 5 happyReduction_24
happyReduction_24 (_ `HappyStk`
	(HappyAbsSyn5  happy_var_4) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn5  happy_var_2) `HappyStk`
	_ `HappyStk`
	happyRest)
	 = HappyAbsSyn5
		 (TFun happy_var_2 happy_var_4
	) `HappyStk` happyRest

happyReduce_25 = happyReduce 4 6 happyReduction_25
happyReduction_25 (_ `HappyStk`
	(HappyAbsSyn4  happy_var_3) `HappyStk`
	_ `HappyStk`
	(HappyAbsSyn4  happy_var_1) `HappyStk`
	happyRest)
	 = HappyAbsSyn6
		 (SCase happy_var_1 happy_var_3
	) `HappyStk` happyRest

happyReduce_26 = happySpecReduce_1  7 happyReduction_26
happyReduction_26 (HappyAbsSyn6  happy_var_1)
	 =  HappyAbsSyn7
		 ([happy_var_1]
	)
happyReduction_26 _  = notHappyAtAll 

happyReduce_27 = happySpecReduce_2  7 happyReduction_27
happyReduction_27 (HappyAbsSyn6  happy_var_2)
	(HappyAbsSyn7  happy_var_1)
	 =  HappyAbsSyn7
		 (happy_var_2 : happy_var_1
	)
happyReduction_27 _ _  = notHappyAtAll 

happyNewToken action sts stk [] =
	action 39 39 notHappyAtAll (HappyState action) sts stk []

happyNewToken action sts stk (tk:tks) =
	let cont i = action i i tk (HappyState action) sts stk tks in
	case tk of {
	TokenNum happy_dollar_dollar -> cont 8;
	TokenAdd -> cont 9;
	TokenSub -> cont 10;
	TokenMul -> cont 11;
	TokenAnd -> cont 12;
	TokenOr -> cont 13;
	TokenDbEq -> cont 14;
	TokenNotEq -> cont 15;
	TokenLt -> cont 16;
	TokenLte -> cont 17;
	TokenGt -> cont 18;
	TokenGte -> cont 19;
	TokenTrue -> cont 20;
	TokenFalse -> cont 21;
	TokenIf -> cont 22;
	TokenThen -> cont 23;
	TokenElse -> cont 24;
	TokenVar happy_dollar_dollar -> cont 25;
	TokenLam -> cont 26;
	TokenArrow -> cont 27;
	TokenLParen -> cont 28;
	TokenRParen -> cont 29;
	TokenEq -> cont 30;
	TokenLet -> cont 31;
	TokenIn -> cont 32;
	TokenColon -> cont 33;
	TokenNumber -> cont 34;
	TokenBoolean -> cont 35;
	TokenCase -> cont 36;
	TokenOf -> cont 37;
	TokenSemicolon -> cont 38;
	_ -> happyError' ((tk:tks), [])
	}

happyError_ explist 39 tk tks = happyError' (tks, explist)
happyError_ explist _ tk tks = happyError' ((tk:tks), explist)

newtype HappyIdentity a = HappyIdentity a
happyIdentity = HappyIdentity
happyRunIdentity (HappyIdentity a) = a

instance Prelude.Functor HappyIdentity where
    fmap f (HappyIdentity a) = HappyIdentity (f a)

instance Applicative HappyIdentity where
    pure  = HappyIdentity
    (<*>) = ap
instance Prelude.Monad HappyIdentity where
    return = pure
    (HappyIdentity p) >>= q = q p

happyThen :: () => HappyIdentity a -> (a -> HappyIdentity b) -> HappyIdentity b
happyThen = (Prelude.>>=)
happyReturn :: () => a -> HappyIdentity a
happyReturn = (Prelude.return)
happyThen1 m k tks = (Prelude.>>=) m (\a -> k a tks)
happyReturn1 :: () => a -> b -> HappyIdentity a
happyReturn1 = \a tks -> (Prelude.return) a
happyError' :: () => ([(Token)], [Prelude.String]) -> HappyIdentity a
happyError' = HappyIdentity Prelude.. (\(tokens, _) -> parserError tokens)
parser tks = happyRunIdentity happySomeParser where
 happySomeParser = happyThen (happyParse action_0 tks) (\x -> case x of {HappyAbsSyn4 z -> happyReturn z; _other -> notHappyAtAll })

happySeq = happyDontSeq


parserError :: [Token] -> a 
parserError _ = error "Syntax error!"
{-# LINE 1 "templates/GenericTemplate.hs" #-}
-- $Id: GenericTemplate.hs,v 1.26 2005/01/14 14:47:22 simonmar Exp $










































data Happy_IntList = HappyCons Prelude.Int Happy_IntList








































infixr 9 `HappyStk`
data HappyStk a = HappyStk a (HappyStk a)

-----------------------------------------------------------------------------
-- starting the parse

happyParse start_state = happyNewToken start_state notHappyAtAll notHappyAtAll

-----------------------------------------------------------------------------
-- Accepting the parse

-- If the current token is ERROR_TOK, it means we've just accepted a partial
-- parse (a %partial parser).  We must ignore the saved token on the top of
-- the stack in this case.
happyAccept (1) tk st sts (_ `HappyStk` ans `HappyStk` _) =
        happyReturn1 ans
happyAccept j tk st sts (HappyStk ans _) = 
         (happyReturn1 ans)

-----------------------------------------------------------------------------
-- Arrays only: do the next action









































indexShortOffAddr arr off = arr Happy_Data_Array.! off


{-# INLINE happyLt #-}
happyLt x y = (x Prelude.< y)






readArrayBit arr bit =
    Bits.testBit (indexShortOffAddr arr (bit `Prelude.div` 16)) (bit `Prelude.mod` 16)






-----------------------------------------------------------------------------
-- HappyState data type (not arrays)



newtype HappyState b c = HappyState
        (Prelude.Int ->                    -- token number
         Prelude.Int ->                    -- token number (yes, again)
         b ->                           -- token semantic value
         HappyState b c ->              -- current state
         [HappyState b c] ->            -- state stack
         c)



-----------------------------------------------------------------------------
-- Shifting a token

happyShift new_state (1) tk st sts stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--     trace "shifting the error token" $
     new_state i i tk (HappyState (new_state)) ((st):(sts)) (stk)

happyShift new_state i tk st sts stk =
     happyNewToken new_state ((st):(sts)) ((HappyTerminal (tk))`HappyStk`stk)

-- happyReduce is specialised for the common cases.

happySpecReduce_0 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_0 nt fn j tk st@((HappyState (action))) sts stk
     = action nt j tk st ((st):(sts)) (fn `HappyStk` stk)

happySpecReduce_1 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_1 nt fn j tk _ sts@(((st@(HappyState (action))):(_))) (v1`HappyStk`stk')
     = let r = fn v1 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_2 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_2 nt fn j tk _ ((_):(sts@(((st@(HappyState (action))):(_))))) (v1`HappyStk`v2`HappyStk`stk')
     = let r = fn v1 v2 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happySpecReduce_3 i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happySpecReduce_3 nt fn j tk _ ((_):(((_):(sts@(((st@(HappyState (action))):(_))))))) (v1`HappyStk`v2`HappyStk`v3`HappyStk`stk')
     = let r = fn v1 v2 v3 in
       happySeq r (action nt j tk st sts (r `HappyStk` stk'))

happyReduce k i fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyReduce k nt fn j tk st sts stk
     = case happyDrop (k Prelude.- ((1) :: Prelude.Int)) sts of
         sts1@(((st1@(HappyState (action))):(_))) ->
                let r = fn stk in  -- it doesn't hurt to always seq here...
                happyDoSeq r (action nt j tk st1 sts1 r)

happyMonadReduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonadReduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
          let drop_stk = happyDropStk k stk in
          happyThen1 (fn stk tk) (\r -> action nt j tk st1 sts1 (r `HappyStk` drop_stk))

happyMonad2Reduce k nt fn (1) tk st sts stk
     = happyFail [] (1) tk st sts stk
happyMonad2Reduce k nt fn j tk st sts stk =
      case happyDrop k ((st):(sts)) of
        sts1@(((st1@(HappyState (action))):(_))) ->
         let drop_stk = happyDropStk k stk





             _ = nt :: Prelude.Int
             new_state = action

          in
          happyThen1 (fn stk tk) (\r -> happyNewToken new_state sts1 (r `HappyStk` drop_stk))

happyDrop (0) l = l
happyDrop n ((_):(t)) = happyDrop (n Prelude.- ((1) :: Prelude.Int)) t

happyDropStk (0) l = l
happyDropStk n (x `HappyStk` xs) = happyDropStk (n Prelude.- ((1)::Prelude.Int)) xs

-----------------------------------------------------------------------------
-- Moving to a new state after a reduction









happyGoto action j tk st = action j j tk (HappyState action)


-----------------------------------------------------------------------------
-- Error recovery (ERROR_TOK is the error token)

-- parse error if we are in recovery and we fail again
happyFail explist (1) tk old_st _ stk@(x `HappyStk` _) =
     let i = (case x of { HappyErrorToken (i) -> i }) in
--      trace "failing" $ 
        happyError_ explist i tk

{-  We don't need state discarding for our restricted implementation of
    "error".  In fact, it can cause some bogus parses, so I've disabled it
    for now --SDM

-- discard a state
happyFail  ERROR_TOK tk old_st CONS(HAPPYSTATE(action),sts) 
                                                (saved_tok `HappyStk` _ `HappyStk` stk) =
--      trace ("discarding state, depth " ++ show (length stk))  $
        DO_ACTION(action,ERROR_TOK,tk,sts,(saved_tok`HappyStk`stk))
-}

-- Enter error recovery: generate an error token,
--                       save the old token and carry on.
happyFail explist i tk (HappyState (action)) sts stk =
--      trace "entering error recovery" $
        action (1) (1) tk (HappyState (action)) sts ((HappyErrorToken (i)) `HappyStk` stk)

-- Internal happy errors:

notHappyAtAll :: a
notHappyAtAll = Prelude.error "Internal Happy error\n"

-----------------------------------------------------------------------------
-- Hack to get the typechecker to accept our action functions







-----------------------------------------------------------------------------
-- Seq-ing.  If the --strict flag is given, then Happy emits 
--      happySeq = happyDoSeq
-- otherwise it emits
--      happySeq = happyDontSeq

happyDoSeq, happyDontSeq :: a -> b -> b
happyDoSeq   a b = a `Prelude.seq` b
happyDontSeq a b = b

-----------------------------------------------------------------------------
-- Don't inline any functions from the template.  GHC has a nasty habit
-- of deciding to inline happyGoto everywhere, which increases the size of
-- the generated parser quite a bit.









{-# NOINLINE happyShift #-}
{-# NOINLINE happySpecReduce_0 #-}
{-# NOINLINE happySpecReduce_1 #-}
{-# NOINLINE happySpecReduce_2 #-}
{-# NOINLINE happySpecReduce_3 #-}
{-# NOINLINE happyReduce #-}
{-# NOINLINE happyMonadReduce #-}
{-# NOINLINE happyGoto #-}
{-# NOINLINE happyFail #-}

-- end of Happy Template.
