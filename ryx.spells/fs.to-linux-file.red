Red [
Purpose: { Define to-linux-file
}
Notes: {
}
History: [
1-1-2021  [{created} {Evan}]
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

to-linux-file: function [
    {returns a file path in linux format}
    fp [file!]
][
    replace/all fp "\" "/"
]