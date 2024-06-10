Red [
    Version: 1.0.0
    History: [
        5-1-2024  [{created} - {Stone}]
    ]
    Purpose: {return variance from a block of numbers}
 
    Notes: {
    }
    Rights: {© 2024. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    License:   'tbd
]
variance: function [
    {return the variance from a block of numbers}
    values [vectors!] "block! or vector!"
    /population
][
  ;; make a vector from the block of numbers
  comment {
    if block? values [
        values: make vector! values
    ]
  }  
   
    ;; get its count
    n: count? values

    ;; take away the average
    case [
        if pure? values [


        ]
        if vector? values [

        ;; it is a vector, so it is destructive
        values - average values

        ]
    ]

    
    ;; it's sample, not population
    if not population [ n: n - 1]

    ;; variance 
    return (sos to-block values) / n
]