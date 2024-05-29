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
    values [vectors!]
    /sample
][
  ;; make a vector from the block of numbers
    if block? values [
        values: make vector! values
    ]
    ;; get its count
    n: count? values

    ;; take away the average
    ;; it is a vector, so it is destructive
    values - average values

    ;; it's sample, not population
    if sample [ n: n - 1]

    ;; variance 
    return (sos to-block values) / n
]