Red [

    Copyright: {(c) 2019. All Worldwide Rights Reserved.}
    Owner:   "Blastoff Enterprises"
    Date: 5-Oct-2019
    File:    %forksip.red
    Version: 1.0.0
    Needs: none    
    Name: none
    Purpose: {
        Mimics the join word from REBOL.
    }
    Notes: {
        05-Oct-2019 This is a no license word taken from Github.
    }
    History: [ 
        []
    ]
]  

join: function [ ;from Gregg's %series.red
    "Returns a copy of a value, with other values appended."
    value "Base value; copied if series, formed otherwise"
    rest  "Value or block of values"
][
    repend either series? :value [copy value] [form :value] :rest
]