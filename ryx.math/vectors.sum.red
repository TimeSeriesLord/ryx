Red []

_sum: :sum

sum: func [
    {Sum of all ring components of the block 'xs
        ([ring] -+ ring)
    }
    xs [block! vector!]
][
    foldl :add 0 xs
]

