Red [

    Copyright: {(c) 2019. All Worldwide Rights Reserved.}
    Owner:   "Blastoff Enterprises"
    Date: 5-Oct-2019
    File:    %forksip.red
    Version: 1.0.0
    Needs: none    
    Name: none
    Purpose: {
        Mimics the forksip word from REBOL.
    }
    Notes: {
        05-Oct-2019 This is a no license word taken from Github.
    }
    History: [ 
        []
    ]
]  

forskip: function [
    "Evaluates a block for periodic values in a series."
    'word [word!] "Word set to each position in series and changed as a result"
    skip-num [integer!] "Number of values to skip each time"
    body [block!] "Block to evaluate each time"
    ;; /local orig result
][
    unless positive? skip-num [cause-error 'script 'invalid-arg reduce [skip-num]]
    unless any [
        series? get word
        port? get word
    ][
        cause-error 'user 'message [
            "forskip/forall expected word argument to refer to a series or port!"
        ]
    ]
    orig: get word
    while [any [not tail? get word (set word orig false)]] [
        set/any 'result do body
        set word skip get word skip-num
        get/any 'result
    ]
]