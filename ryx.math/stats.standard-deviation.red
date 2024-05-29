Red [
    Version: 1.0.0
    History: [
        5-1-2024  [{created} - {Stone}]
    ]
    Purpose: {
    }
    Notes: {
    }
    Rights: {© 2024. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    License:   'tbd
]
stddev: function [
    {return standard deviation from a block of numbers}
    values [ number! block!]
    /sample 
][
    if number? values [
        return sqrt values
    ]
    return either sample [
        sqrt variance/sample values

    ][
        sqrt variance values
    ]
] 