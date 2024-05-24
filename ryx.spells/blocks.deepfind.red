Red [
    Purpose: { 
        Define deepfind for the Spells Dictionary
    }
    Notes: {
    }
    History: [
    1-1-2021  [{created} {Evan}]
    ]
    Version: 1.0.0
    Needs: none
    File:    %.red
    Word:    [deepfind]
    Programmer: []
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2021. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    License:   'tbd
    Date: none
]

deepfind: define [
    "return what is found in an array"
    b [block!] 
    v [any-type!] 
][
    either found? d: find b v [
        d
    ][
        c: b
        forall c [
            if all [block? d: first c  d: deepfind d v] [
                return d
            ]
        ]
        none
    ]
]