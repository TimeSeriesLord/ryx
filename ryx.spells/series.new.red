Red [ ]


new: function [ 
    {returns a new data structure from a block. sets have unique values.}
    type [word! datatype!]
    block [block!]
][
    case [
        type = object! [ attempt [make object! block ]]
        type = map! [ attempt [make map! block ]]
        type = hash! [ attempt [make hash! block ]]
        type = vector! [ attempt [make vector! block ]]
        type = set! [ attempt [
            unique block ]
        ]
    ]
]