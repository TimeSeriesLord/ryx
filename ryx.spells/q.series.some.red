Red [ ]
some?: function [
    {Returns true if data is a series not at its tail} 
    data [series! none! map!] 
    return: [logic!]
][
    either not empty? data  [true][false]
]