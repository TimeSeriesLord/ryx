Red [
    Purpose: {Appends a path to each file name in a block of names}
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


slappath: function [
    {Appends a path to each file name in a block of names}
    path [file!]
    names [block!]
][
    ;; dependent out
    fullnames: copy []

    ;; for all files, append into the dout the full path name
    forall names [
        append fullnames rejoin [path names/1]
    ]
]