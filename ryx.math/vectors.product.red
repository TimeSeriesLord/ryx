Red [
    Purpose: {
        Product of a block! or vector!
    }
    Notes: {
    }
    History: [
    1-4-2021  [{created} {Evan}]
    ]
    Version: 1.0.0
    Needs: none
    File:    %hof.product.red
    Programmer: []
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2021. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    Date: none
]

product: function [
        {Product of items of a block! or vector! }
        xs [block! vector!]
    ][
        foldl :multiply 1 xs
]

