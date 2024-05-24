Red []

dashed: function [
    {returns a new string replacing all spaces with dashes}
    string [string!]
][
    s: copy string
    replace/all s " " "-"
]

