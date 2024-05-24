Red [
    Version: 1.0.0
    History: [
        5-1-2024  [{created} - {Stone}]
    ]
    Purpose: {return the sum of squares of a block of numbers}  
    Notes: {
    }
    Rights: {© 2024. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    License:   'tbd
]
sos: sum-of-squares: function [ 
    {return the sum of squares of a block of numbers}
	b [block!]
][
	sum map :square b
]