
Red []

for: function [
    {hacky for loop}
    'incr
    start [numeric!]
    end [numeric!]
    step [numeric!]
    code [block!]
][  
    ;; the loop counter from the user gets passed to incr
    ;; so it is the starting int from the for loop
    ;; code is the code block that might have reference 
    ;; to the user loop counter
    ;; thus replace all references to the loop counter with start
    replace/all/deep code incr 'start

    ;; count up or count down
    either start < end [
        loopblock: [start <= end ]
    ][
        loopblock: [start >= end]
    ]

    while loopblock [ 
        do reduce code
        start: start + step
    ]
]