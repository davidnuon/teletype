module Teletype.Baudo where

import Data.Char

newtype BaudoChar = Int

space :: BaudoChar
space = 0x04

baudoChars :: [(Char, BaudoChar)]
baudoChars = [
    (' ', space),
    ('!', 0x23),
    ('"', 0x23),
    ('$', 0x39),
    ('%', 0x2f),
    ('&', 0x23),
    ('(', 0x29),
    (')', 0x32),
    ('*', 0x2b),
    ('+', 0x31),
    (',', 0x2c),
    ('-', 0x3e),
]

toBaudo :: Char -> BaudoChar
toBaudo c = maybe space id $ lookup (toUpper c) baudoChars
