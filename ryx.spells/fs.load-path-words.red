Red [
Purpose: {
}
Notes: {
}
History: [
8-Apr-2021 [{commented out the load hack as load is now overloaded}]
1-1-2021  [{created} {Evan}]
]
Version: 1.0.0
Needs: none
File:    %.red
Word:    [load-path-words]
Programmer: []
Tabs: on
;; GUI title bar
Name: none
Rights: {© 2021. All Worldwide Rights Reserved.}
Owner:   {Blastoff Enterprises}
License:   'tbd
Date: none
]

load-path-words: function [
    "sets words to path names taken from a block either from disk or interactively"
    settings [file! block!]
    /absolute

][  
    ;; load only takes [file! url! string! binary!] and returns a block!
    ;; if block? settings [settings: mold settings]

    

    paths: load settings
    forskip paths 2 [
        either absolute [
            set paths/1 rejoin [home paths/2]
        ][
            set paths/1 paths/2
        ]
        
    ]
]