Red [
    Purpose: {
    }
    Notes: {
    }
    History: [
    1-1-2021  [{the change} {by whom}]
    ]
    Version: 1.0.0
    Needs: none
    File:    %.red
    Programmer: []
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2021. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    Date: none
]

;; override Red's built-in round
_round: :round

round: function [ 
    
    {
    
    Returns the nearest integer. Halves round up (away from zero) by default. 
    For Red's version: red.round    
    }

    number [number! time! pair!]
    /even 
    /down 
    /half-down
    /floor 
    /ceiling 
    /half-ceiling
    /up
    /places scale [integer!]
    /factor fnum [integer!]
][

    roundup: function [
        x [number!]
    ][
        to-integer x + either x < 0 [-0.5][0.5]
    ]
    
    
    any [
        ;; Halves round toward even results
        if even [_round/even number] 
        
        ;; Round toward zero, ignoring discarded digits. (truncate)
        if down [_round/down number] 
        
        ;; Halves round toward zero
        if half-down [_round/half-down number] 
        
        ;; Round in negative direction
        if floor [_round/floor number] 
        
        ;; Round in positive direction
        if ceiling [_round/ceiling number] 
        
        ;; Halves round in positive direction
        if half-ceiling [_round/half-ceiling number] 
        
        ;; round to the next highest integer!
        if up [roundup number] 

        ;; Round to the decimal place
        if places [_round/to number power 10 -1 * scale] 
        
        ;; if factor [xround number fnum] 

        roundup number
    ]
    
] 