Red [] 

foldl1: function [
    {As foldl but with the first alement of the series 'ys
    serving as the starting point. The series ys should
    not be empty.
        (a -+ a -+ a) -+ [a] -+ a)
    }
    f [any-function!]
    ys [series!]  
][
    require [[not empty? ys]]
    result: foldl :f (first ys) (next ys)
    result
]