Red [ ]

;; global constants
x: 1
y: 10 

a: function [ 
    f 
][
    ;; uses global constant
    ;; aka dynamic scoping, which extends the frame
    f + x
]

b: function [
    g
    y
][
    ;; does not use global constant
    ;; since the y here is defined in the arguments block to b
    ;; hence it is not the same y
    g + y
]

{ The first block to the function [ g y ] creates a context for both g and y, 
which is below the global scope }

c: function [
    w [function!]
    x 
    /b y
][ 
    ;; x is not the global context x
    ;; it is local to c

    ;; b is not global context b
    ;; it is true if present, none otherwise
    ;; global context b can be called if local b is true
    ;; y is local to c. it is not the same as the y in b
    either b [
        print w x y
    ][
        print w x 
    ]
    
]
