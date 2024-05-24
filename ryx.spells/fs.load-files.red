Red [
    Purpose: {
        Define load-files word for the Spells Dictionary
    }
    Notes: {
        One day, make this work with url! so that loading files
        from a remote source should be as seemless as loading
        from a local mounted filesystem.
    }
    History: [
    1-1-2021  [{created} {Evan}]
    ]
    Version: 1.0.0
    Needs: none
    File:    %.red
    Word:    [load-files]
    Programmer: []
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2021. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    License:   'tbd
    Date: none
]

load-files: function [
    {loads file names from a path into a block!}
    incoming [file! string! url!]

][
    if url? incoming [
        return make error! "Not implemented right now! You must pass a file! reference or a string!"
    ]

    ;; if it is a string, we need to make it into a Red file
    if string? incoming [
        incoming: to-linux-file to-local-file incoming
    ]

    ;; if it is a directory path, dirize it
    if dir? incoming [ 
        incoming: dirize incoming 
    ]

    ;;  if it is a directory, load the file names and affix 
    ;; the directory to the file name 
    ;; otherwise it's a file so compose it as the only item 
    ;; in the block
    either dir? incoming [
        mpath: copy incoming
        files: read incoming
        foreach f files [
            change f rejoin [mpath f]
        ]
    ][
        files: compose [(incoming)]
    ]       
    return files
]  ;; load-files