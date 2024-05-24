Red [] 

min-block: func [
    {Returns maximum value from a block
    min-block :: [a] -> a
    }
    xs [block!] {[a]}
    /local result [any-type!]
][
    result: foldl1 :min xs
    result
]