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
    License: 'tbd
]


newdiro: function [
    {Returns an object of paths for easy access}
    fullpath [file!]
    /apps
][
    root: snip second split-path copy fullpath

    ;; construct the specification for the object
    specification: copy []
    
    ;; add the names and paths to the specification
    append specification [this: fullpath ]

    ;; read everything from the directory diretory
    directories: read fullpath
    ;; remove no directories
    remove-each d directories [not dir? d]

    ;; sort it so the layout is in order for any probing
    sort directories

    ;; only easyr start with easyr.
    either apps [
        rule: [copy name to slash to end ]
    ][
        rule: [root thru "." copy name to slash to end ]
    ]

    ;; for all of the directories below the directory root
    foreach d directories [

        if parse d rule [
            append specification to-set-word to-string name
            ;; append specification rejoin [get to-word to-string root]
            append specification rejoin [fullpath d]
        ]
    ]
    ;; make the app object
    ;; set to-word rejoin [app-name "o"] 
    context specification
]

