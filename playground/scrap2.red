Red [ ]

comment {
    ;; step updating for percents
     case [
        ;; if percents, step by 1%
        all [none? step percent? start percent? end] [ step: 1%]

        ;; if percents by step as integer, convert to percent
        all [integer? step percent? start percent? end] [ 
            step: to-percent (step / 100)
        ]
        ;; default step increment
        none? step [step: 1]
    ]
}

    case [
        ;lazy hack
        ;; any [ char? start char? end time? start time? end ][ ]

        ;; integer! no step, so unit increment
        all [integer? start integer? end none? step] [step: 1]

        ;; integer!s but float! step, so float! 
        all [integer? start integer? end float? step][
            decimals: places step
            start: to-float start
            end: to-float end
        ]        

        all [integer? start float? end float? step][
            decimals: places end
            start: to-float start
        ]
        
        all [integer? start float? end integer? step][
            decimals: places end
            start: to-float start
            step: to-float step
        ]




        all [float? start integer? end integer? step ][
            decimals: places start
            end: to-float end
            step: to-float step
        ]
        all [float? start integer? end float? step][
            decimals: places start
            end: to-float end
        ]


        all [money? start 
            any [float? end integer? end] 
            any [float? step integer? step]
        ][
            decimals: 2
            start: to-money start
            step: to-money step
        ]
        all [money? end 
            any [float? start integer? start] 
            any [float? step integer? step]
        ][
            decimals: 2
            start: to-money start
            step: to-money step
        ]
        all [money? step
            any [float? start integer? start] 
            any [float? end integer? end]
        ][
            decimals: 2
            start: to-money start
            end: to-money end
        ]

        char? start [ 
            case [
                all [ float? step step > 0 ] [ to-integer step]
                all [ float? step step < 1 ] [ step: to-integer step * 10 ** places step ]
                any [none? step zero? step] [step: 1]
            ]
        ]


        'otherwise [
            decimals: either (places start) > (places end) [
                places start
            ][
                places end
            ] 
        ]
    ]

    case [

        ;; coerce start to float
        all [integer? start float? end none? step] [
            decimals: places end
            start: to-float start
            step: 1.0
        ]

        ;; start with an integer! but step with a float! we need the start to be a float!
        all [integer? start float? step ][  
            start: to-float start
            end: to-float end
            decimals: places step
            ;; end: to-float end
        ]


;;        float? start [ ]
        ;; time? start [ ]
        ;; date? start [ ]

    ]    
