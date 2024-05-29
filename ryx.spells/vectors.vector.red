Red [
    Purpose: {
        Wrapper for make vector!
    }
    Notes: {
        <vector> ::= make vector! <vector-spec>
        <vector-spec> ::= <block> | [ <type-and-size> <block>]
        <type-and-size> ::= char! 8 | char! 16 | char! 32 |
                    integer! 8 | integer! 16 | integer! 32 |
                    float! 32 | float! 64 | percent! 32 | percent! 64

        >> make vector! [integer! 32 [1 2 3 4 5]]
        == make vector! [1 2 3 4 5]

        >> make vector! [#"r" #"e" #"d"]
        == make vector! [#"r" #"e" #"d"]

        If an integer! or float! value is supplied to make, 
        a vector will be created of size N with values initialized to 0.
        
        >> make vector! 3
        == make vector! [0 0 0]

        >> make vector! 3.0
        == make vector! [0 0 0]
    }
    History: [
    1-Apr-2021  [{created} {Evan}]
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
    Date: 1-Apr-2021
]

vec: vector: function [
    {Return a vector! from a block!}
    values [block! string! number!]
][
    
    return make vector! values
    either error? try [v: make vector! values][
        return make error! "Not a valid expression. Make vector! failed."
    ][
        return v
    ]
]

