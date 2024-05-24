Red [
Purpose: { Define to-suffix for the Spells Dictionary
}
Notes: {
}
History: [
1-1-2021  [{created} {Evan}]
]
Version: 1.0.0
Needs: none
File:    %.red
Word:    [to-suffix]
Programmer: []
Tabs: on
;; GUI title bar
Name: none
Rights: {© 2021. All Worldwide Rights Reserved.}
Owner:   {Blastoff Enterprises}
License:   'tbd
Date: none
]

to-suffix: function [ 
    {coerces designated datatypes! into a file! in a suffix layout}
    end [file! string! word!]
][  
    head insert to-file end "."
]