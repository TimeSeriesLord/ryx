Red [] 

max-block: func [
    {returns maximum value from a block }
    xs [block!] 
    /local result [any-type!]
][
    result: foldl1 :max xs
    result
]

    