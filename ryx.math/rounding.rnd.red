Red [
    Purpose: {Return a number rounded to specified significant figures}

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


rnd: function [
    {Return a number rounded to specified significant figures}

    number [number!]
    signif [integer!]
][
    _round/to number 1 / 10 ** signif
]
