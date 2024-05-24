Red [
    Purpose: {Checks if block is a true set}
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
    License: 'tbd
]


set?: function [
    {Returs true if block! is a set!, i.e., unique values only}
    set [set!]
][
    equal? set unique copy set
]