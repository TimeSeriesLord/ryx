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
    indat [ number! block!]
][
    if number? indat [
        return sqrt indat
    ]
    return sqrt variance indat
] 