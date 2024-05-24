Red [

    Copyright: {(c) 2019. All Worldwide Rights Reserved.}
    Owner:   "Blastoff Enterprises"
    Date: 5-Oct-2019
    File:    %forksip.red
    Version: 1.0.0
    Needs: none    
    Name: none
    Purpose: {
        Mimics the reform word from REBOL.
    }
    Notes: {
        05-Oct-2019 This is a no license word taken from Github.
    }
    History: [ 
        []
    ]
]  

reform: function [
    "Forms a reduced block and returns a string."
    block [block!]
    return: [string!]
][
    form reduce block
]