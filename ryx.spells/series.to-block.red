comment {
comsep-to-block: function [
    {converts a comma separated string to block of numbers
        s: "10, 12, 23, 23, 16, 23, 21, 16"
    }
    s [string!]
][
    rebolize first load-csv s
]
}

Red [

]

;; override
_to-block: :to-block

to-block: function [ 
    "Convert a value to a block!" 
    value
][
    if all [
        string? value
        find value ","
    ][
        ;; return rebolize first load-csv value
        trim value
        return rebolize filter :some? first load-csv value
    ]
    to block! :value
]


