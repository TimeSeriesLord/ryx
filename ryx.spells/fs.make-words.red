Red [
    Purpose: { to make names from redirection
    }
    Notes: {
    }
    History: [
    19-Apr-2024  [{created} {Stone Johnson}]
    ]
    Version: 1.0.0
    Needs: none
    File:    %easyr.make-names.red
    Word:    []
    Programmer: [Stone Johnson]
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2024. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    License:   'tbd
    Date: 19-Apr-2024
]

make-words: function [
    {tag paths with handles}

    folders [block!] 
    path [path! file!]
][

    ;; folders: read directory
    foreach f folders [
        set to-word snip to-string f rejoin [path f]
    ]
]


