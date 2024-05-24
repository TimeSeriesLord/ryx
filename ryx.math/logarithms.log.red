Red [
    Purpose: {
        Define word naming a wrapper function to logarithmic math.
    }
    Notes: {
    }
    History: [
    19-Oct-2019  [{created} {Evan}]
    ]
    Version: 1.0.0
    Needs: none
    File:    %.red
    Word:    [log]
    Programmer: []
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2021. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    Date: none
]

log: function [
    {Returns the logarithm for a number given a base. 
    The default is base 10.}
    number [number!]
    /base  bnum [integer!] {The base to calculate upon.}
    /natural "The natural log."
    /binary "base 2 log"
][
    case [
        base [return round/ceiling ((log-e number) / (log-e bnum))]
        binary [return log-2 number]
        natural [return log-e number] 
        true [return log-10 number]
    ]
    
]