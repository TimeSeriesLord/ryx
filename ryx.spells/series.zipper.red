;; send reduced block! 
Red [
    Purpose: {zip n columns, effectively creating tables, matrices}
    Override: no
    Notes: { 
    }
    Version: 1.0.0
    Date:  none
    History: [ 24-May-2024 [{created} {Stone}]  ]
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


;; matrix(data = 1 :10, nrow = 5 , ncol = 2 

zipper: function [ 
    {Return vectors in rows made from columns in a block}
    block-of-columns [block!] "A block of blocks"
][

    ;; get the count of columns
    ;; [a b c]
    
    ;; count of columns the matrix will have
    ;; columns: count? block-of-columns

    ;; get the smallest column count
    ;; blank counts
    ;; forall block-of-columns [
    ;;    append counts count? get first block-of-columns
    ;; ]

    end: min-block map :count? block-of-columns 

    ;; end: min-block map :count? block-of-columns


    ;; dout block
    blank dout

    ;; 
    repeat index end [

        blank temp

        block-of-columns: head block-of-columns 
        forall block-of-columns [
            x:  block-of-columns/1
            append temp x/:index 
        ]
        repend/only dout temp
    ]

]

