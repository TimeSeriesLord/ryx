Red [
    Purpose: { Save a script stub to a destination }
    Override: no
    Notes: { 
    }
    Version: 1.0.0
    Date: none
    History: [
        none  [{created} {Stone}]
    ]
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

stub: function [
    directory [file!]
    file [file!]

    /length
][
    destination: rejoin [directory file %.red]
    if length [
     return save/header/length destination {code here} system/standard/header
    ]
    save/header destination {code here} system/standard/header
]