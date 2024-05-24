Red [
    Purpose: {
        Define word for Spells Dictionary that fixes 
        Red's load-csv to Red values
    }
    Notes: {
    }
    History: [
    1-1-2021  [{created} {Evan}]
    ]
    Version: 1.0.0
    Needs: none
    File:    %.red
    Programmer: []
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2021. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    Date: none
] 

blockify: csv2red: function [
    {returns a block of Red values from CSV data}
    feed [string! file! url!]
][
    ;; if it is a file or url, read it as that returns a string!
    feed: if any [file? feed url? feed] [read feed]

    ;; this puts csv data into strings, which defeats the power
    ;; of Carl Sassenrath's REBOL design co-opted by Red
    csv: load-csv feed

    ;; so rebolize it, i.e., turn string values 
    ;; into REBOL / Red values
    ;; Rebolized is named in honor of Carl Sassenrath 

    csv: rebolize csv
]
