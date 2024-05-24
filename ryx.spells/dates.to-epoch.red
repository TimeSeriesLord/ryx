Red [
    Purpose: {
        convert Red date into Unix date  
        (integer seconds since 1970)
    }
    Notes: {
    }
    History: [
    1-1-2021  [{created} {Pierre}]
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


to-epoch: function [
    "Return date in unix time format from a date in REBOL format"
    rebol-date [date!] "Date in REBOL time format"
][
    if rebol-date/time = none [ 
        rebol-date: load rejoin [rebol-date "/00:00:00"] 
    ]
    rebol-date: rebol-date - now/zone
    return to-integer (rebol-date - 1-Jan-1970 * 86400) + 
    (rebol-date/time/hour * 3600) + 
    (rebol-date/time/minute * 60) + rebol-date/time/second
]