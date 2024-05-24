Red []

current?: function [
    {check if settings is current}
    mpath [file! path!]
    eo [object!]
    num [integer!]
][
    mpath: read mpath
    remove-each d mpath [not dir? d]
    ;; checking
    ;; remove three from easyr 
    either equal? -1 * num + length? values-of eo length? mpath [
        true
    ][
        false
    ]

]
