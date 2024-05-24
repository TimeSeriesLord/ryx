Red [ ]

comment {

P Parentheses first
E Exponents (ie Powers and Square Roots, etc.)
MD Multiplication and Division (left-to-right)
AS Addition and Subtraction (left-to-right)

}

eval: function [
    expr [block!]
][
    ;; paren first 
    expr: compose expr
    
]