Red [

]

..: make op! function [
    {Returns a range in a block! from NUMERIC! terminals suitable for a vector!}    

    start [numeric!] "starting"
    end [numeric! block! pair!] "ending"
][

comment {
    » ? numeric!
    NUMERIC! is a typeset! value: [char! integer! float! percent! time! date! money!]
}    
    ;; if accidentally only one element in  range [ ]
    if all [block? end 2 < count? end] [end: first end]
    
    comment {either start end or [next end]}    
    ;; 1 [2 5]
    ;; 15.2 .. [1.0 .5]

    ;; Ok we're dealing with a block! or pair!
    either any [block? end pair? end] [

        ;; in case of expressions for the two points
        end: reduce end

        ;; step is the second of the two
        step: end/2

        ;; end is the first of the two
        end: end/1

        ;; can't have negative steps
        ;; suppress if it is a fancy date
        if attempt [negative? step ] [step: negate step]
    ][
        ;; not a block or pair so no step yet
        step: none
    ]

    ;; get out fast if mere replication
    if start = end [
        return replicate start step
    ]

    ;; otherwwise we need to set the steps
    case [
        
        ;; ---- NO Steps 

        ;; integer - integer - none
        all [integer? start integer? end none? step] [step: 1]

        ;; float - float - none
        all [float? start float? end none? step ][
            decimals: places start
            step: 1.0
        ]

        ;; integer - float - none
        all [integer? start float? end none? step] [step: 1]

        ;; float - integer - none
        all [float? start integer? end none? step] [
            decimals: places start
            end: to-float end
            step: 1.0
        ]

        ;; ---- STEPS

        ;; integer - float - integer
        all [integer? start float? end integer? step] [ end: to-integer end ]

        ;; integer - float - float 
        all [integer? start float? end float? step] [
            decimals: places end
            start: to-float start
        ]

        ;; integer - integer - float
        all [integer? start integer? end float? step] [
            ;; decimals: 2
            ;; start: to-float start
            ;; end: to-float end
            step: to-integer step
        ]
      
        ;; float - float - integer
        all [float? start float? end integer? step] [
            decimals: places start
            step: to-float step
        ]

        ;; float - float - float
        all [float? start float? end float? step] [
            decimals: places start
        ]        

        ;; float - integer - integer
        all [float? start integer? end integer? step] [
            decimals: places start
            end: to-float end
            step: to-float step
        ]

        ;; ----- to money!

        ;; integer -integer - money
        all [integer? start integer? end money? step] [
            decimals: 2
            start: to-money start
            end: to-money end
        ]


        all [percent? start percent? end none? step][
            step: 1%
        ]

        ;; if percents by step as integer, convert to percent
        all [percent? start percent? end integer? step][ 
            step: to-percent (step / 100)
        ]

        all [ integer? start percent? end percent? step][
            start: to-percent (start / 100)
        ]

        all [ integer? start percent? end float? step][
            start: to-percent (start / 100)
        ]

        percent? start [ 
            if none? step [step: 1%]
        ]

        ;; ---- MONEY

        ;; money - money - none
        all [money? start money? end none? step][
            step: $1
        ]

        ;; money - float | integer - none
        all [ money? start 
            any [float? end integer? end] 
            none? step
        ][
            decimals: 2
            end: to-money end
            step: $1
        ]

        ;; money - float | integer - float | integer
        all [ money? start 
            any [float? end integer? end] 
            any [float? step integer? step]
        ][
            decimals: 2
            start: to-money start
            step: to-money step
        ]


        ;; float | integer - money - none
        all [
            any [integer? start float? start]
            money? end none? step
        ][
            decimals: 2
            start: to-money start
            end: to-money end
            step: $1
        ]

        ;; float | integer - money - money
        all [
            any [integer? start float? start]
            money? end money? step
        ][
            decimals: 2
            start: to-money start
            end: to-money end
            step: to-money step
        ]

        ;; ----- CHAR

        ;; char - char - none
        all [char? start char? end none? step][
            step: 1 
        ]

        ;; ----- TIME
        any [time? start time? end word? step] [
            case [
                ; ms = milliseconds
                step = 'ms [
                    step: 0:0:0.1
                ] 
                ; s = seconds  
                step = 's [
                    step: 0:0:1
                ] 
                ; m = minutes 
                step = 'm [
                    step: 0:1:0
                ] 
                ; h = hours
                step = 'h [
                    step: 1:0:0
                ] 
                'otherwise [
                    step: 1
                ]

            ]
        ]        



        ;; time - time - none
        all [time? start time? end none? step][ step: 1]

        ;; ----- DATES


        any [date? start date? end word? step] [
            case [
                ; m = month = 1 m
                step = 'm [
                    step: 1
                    steptype: 'm
                ] 
                ; y = year = 1 yr 
                step = 'y [
                    step: 1
                    steptype: 'y
                ] 
                ; w = week = 7 
                step = 'w [
                    step: 7
                    steptype: 'w
                ] 
                ; q = quarter fom = 3 m fom
                step = 'q [
                    step: 3
                    steptype: 'q

                    ;; start of month for quarter
                    start: bom start

                ] 
                ; ql = quarter lom = 3 m eom
                step = 'ql [
                    step: 3
                    steptype: 'ql

                    ;; end of month for quarter
                    qlf: function [d [date!]] [ d/month: d/month + 2 eom d]
                ] 
                'otherwise [
                    step: 1
                ]

            ]
        ]        

        ;; date - date - none
        all [date? start date? end none? step][
            step: 1
        ]
       
    ]    

    ;; dout block
    blank dout

    ;; if high to low, reverse the terminal points
    ;; otherse kounter gets start
    either start > end [
        check: [ start >= end]
        step: negate step
    ][ 
        check: [start <= end]
    ]
    while check [
        insert tail dout either float? start [
            round/places start decimals
        ][
            start
        ]
        ;; adapt the step for dates ******* YET TO DO *******
        case [
            ; m = month = 1 m
            steptype = 'm [
                start/month: start/month + step
            ] 
            ; y = year = 1 yr 
            steptype = 'y [
                start/year: start/year + step
            ] 
            ; w = week = 7 
            steptype = 'w [
                start: start + step
            ] 
            ; q = quarter fom = 3 m bom
            steptype = 'q [
                start/month: start/month + step
            ] 
            ; ql = quarter lom = 3 m eom
            steptype = 'ql [
                start/month: start/month + step
            ]            
            'otherwise [
                start: start + step
            ]
        ]
        ;;start: start + step 
    ]
    either steptype = 'ql [ 
        return dout: map :qlf dout 
    ][
        return dout
    ]

]

