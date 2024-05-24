Red [
    Purpose: {
    }
    Notes: {
    }
    History: [
    7-Apr-2021  [{created} {Evan}]
    ]
    Version: 1.0.0
    Needs: none
    File:    %easyr.unload.red
    Word:    [unload-words]
    Programmer: []
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2021. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    License: 'tbd
    Date: none
]

unload-words: function [
    "unload words from the Red Dictionary of a named deck"
    names [file! block!] "where the script should be"

][
    ;; if a file! and not block! turn into block!
    if file? names [names: read names]

    ;; strip any files that are not red files
    ;;remove-each this-item namepaths [not equal? suffix? this-item %.red]

    ;; outblock
    blank dout 


    ;; process the names
    forall names [

        if value? n: to-word snip to-string names/1 [
            append dout n
        ]

    ]

    ;; unset 'em
    unset dout

]
    

