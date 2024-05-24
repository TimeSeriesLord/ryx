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
    {return the standard deviation from a block of numbers}
    indat [ vectors!]
][
  ;; make a vector from the block of numbers
    if block? indat [
        indat: make vector! indat
    ]
    ;; get its length
    items: length? indat

    ;; take away the average
    indat - average indat

    ;; variance 
    return (sos to-block indat) / items
]