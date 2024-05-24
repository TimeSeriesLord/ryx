Red [
    Purpose: {
    }
    Notes: {
    }
    History: [
    1-1-2021  [{created} {Evan}]
    ]
    Version: 1.0.0
    Needs: none
    File:    %.red
    Word:    []
    Programmer: []
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2021. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    License:   'tbd
    Date: none
]

uencode: function [
    {URL-encode a string}
    data "String to encode"
][
    new-data: make string! ""
    normal-char: charset [
        #"A" - #"Z" #"a" - #"z"
        #"@" #"." #"*" #"-" #"_"
        #"0" - #"9"
    ]
    if not string? data [return new-data]
    forall data [
        append new-data either find normal-char first data [
            first data
        ][
            rejoin ["%" to-string skip tail (to-string to-hex to-integer first data) -2]
        ]
    ]
    new-data
]