Red [
    Purpose: {
        To launch an app built on Easyr
    }
    Notes: { 
    }
    History: [
        24-Apr-2024  [{created} {Stone}]
    ]
    Version: 1.0.0
    Needs: none
    File:    %app.launch.red
    Word:    none
    Programmer: ["Stone Johnson"]
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2024. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    License:   'tbd
    Date: 24-Apr-2024
]


make-diro: function [
    {launch an application}
    'dir-name [word!]
][
    comment {
        i sent a lit word but why?
    }
    ;; get the app-path
    dir-path: get dir-name

    specification: copy []
    ;; add the names and paths to the specification

    append specification [this: dir-path ]


    ;; read everything in the app diretory
    dirs: read dir-path
    ;; remove no directories
    remove-each d dirs [not dir? d]
    ;; capture block for the specification
    sort dirs


    foreach d dirs [
        ;; get the name 
        ;; parse d [thru "." copy name to slash to end ]

        either find d "."  [
            parse d [thru "." copy name to slash to end ]

        ][
            parse d [copy name to slash to end ]
        ]
        
        append specification to-set-word to-string name
        append specification rejoin [get dir-name d]

    ]
    ;; make the app object
    ;; set to-word rejoin [app-name "o"] 
    context specification
]    
 

