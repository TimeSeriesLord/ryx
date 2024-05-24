Red [

]

to-number: function [
    {returns a number from a stringified number}
    s [string!]
][
    load replace  s "," ""
]