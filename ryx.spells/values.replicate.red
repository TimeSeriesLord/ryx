Red [ ]

replicate: function [
    {returns a block with item 'x replicated n times}
    x [any-type!]
    n [integer!]
][
    ;; dependent var out
    dout: copy []

    ;; must use loop because the /dup refinement overrides
    ;; copying a series
    loop n [
        insert/only tail dout either series? x [copy x ][x]
    ]
    dout
]