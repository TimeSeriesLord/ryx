Red [

    Copyright: {(c) 2019. All Worldwide Rights Reserved.}
    Owner:   "Blastoff Enterprises"
    Date: 5-Oct-2019
    File:    %trueQ.red
    Version: 1.0.0
    Needs: none    
    Name: none
    Purpose: {
        Mimics the found? word from REBOL.
    }
    Notes: {
    }
    History: [ 
        []
    ]
]  

found?: function [
    "Returns TRUE if value is not NONE."
    value
][
    not none? :value
]