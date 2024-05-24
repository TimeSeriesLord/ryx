Red [
    Purpose: { 
        Define typesets! 
    }
    Notes: {
        You use typesets in specifications.
    }
    History: [
    1-1-2021  [{created} {Evan}]
    ]
    Version: 1.0.0
    Needs: none
    File:    %.red
    Programmer: [{Evan}]
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2021. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    Date: 1-Apr-2021
]

;; --------------------------------------------
;; A
;; --------------------------------------------
;; array!: make typeset! [block!]
;; any-block!: make typeset! [block! vector! hash!]
any-get!: make typeset! [get-word! get-path!]
;; any-gui!: make typeset! [deep-reactor! face! font! para! scroller! tips! reactor! ]
any-lit!: make typeset! [lit-word! lit-path!]
any-logic!: make typeset! [logic! none!]
any-number!: make typeset! [float! integer! date! time! pair! tuple! char!]
any-set!: make typeset! [set-word! set-path!]
any-dstruct!: make typeset! [block! vector! hash! object! map!]

blocks!: block.ezr!: make typeset! [block! vector! hash!]
vectors!: vector.ezr!: make typeset! [block! vector!]

;; blocks!:  make typeset! [block! vector! hash!]
;; vectors!: make typeset! [block! vector!]

;; --------------------------------------------
;; N
;; --------------------------------------------
;; NUMBER! is a typeset! value: [integer! float! percent!]
numeric!: make typeset! [number! time! money! date! char!]
numericv!: make typeset! [number! vector!]
truescalar!: make typeset! [number! char!]
 