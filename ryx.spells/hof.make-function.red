Red []

make-function: function [
    "Generates a named function with the specified code block."
    name [word!] 
    code [block!] 
    /alt aname [word!]
] [
    set name make function! reduce code
    if alt [
        set aname get name
    ]
    ;; return name
]