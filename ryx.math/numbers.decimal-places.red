Red []

;; number! is any [integer! float! percent! ]

places: function [
    {Returns the significant figures}
    number [number! money!]
][


    either parse s: join "" number [thru dot copy dpart to end] [
        
        return either  0 <= to-integer dpart [ 
            attempt [length? dpart ] 
        ][ 0 ]
    ][
        0
    ]
]
 
