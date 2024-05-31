Red [
    Purpose: { }
    Override: no
    Notes: { 
    }
    Version: 1.0.0
    Date:  none
    History: [
        29-May-2024 [{fixed header; made it work with vector!}]
        5-1-2024  [{created} - {Stone}]
    ]
    Programmer: [Stone Johnson]
    Tabs: on
    ;; GUI title bar
    Name: none
    Needs: none
    File:    none
    Owner:   {Blastoff Enterprises}
    Rights: {© 2024. All Worldwide Rights Reserved.}
    License: 'MIT
]


sos: sum-of-squares: function [ 
    {return the sum of squares of a block of numbers}
	values [vectors!]
][
	;; sum map :square values
    sum square values
]