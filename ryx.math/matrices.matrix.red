Red [
    Purpose: { }
    Override: no
    Notes: { 
    }
    Version: 1.0.0
    Date:  none
    History: [ today [{created} {Stone}]  ]
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


matrix: function [ 
    {Returns either a matrix from a block of column vectors or from a sequence divided into columns}
    bv [vectors!]
    /columns cc
][
    case [
        ; assumes a vector of scalars, i.e., a vector! or block!
        columns [ 
            elements: divide count? bv cc
            
            blank dout
            ;; for the vector

            ;; the goal is to end up with a block of columns from which
            ;; one can call zipper

            ;; cc = column count, 
            ;; elements = row count = number of elements in a column

            bv: head bv
            ;; for column count 
            loop cc [
                blank cblock 
                ;;   for number of elements, 
                repeat j elements [
                    ;; add elements to a column block
                    append cblock first bv
                    ;; MOVE to the next element
                    bv: next bv
                ]
                ;; add column to layout block
                repend/only dout cblock
                ;; call zipper layout block
            ]
            return align zipper dout

        ]
        'otherwise [
            return align zipper bv
        ]
    ]

]

