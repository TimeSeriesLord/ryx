Red [
    Purpose: {
        Define a word to merge compile words to the dictionary
    }
    Notes: {
    }
    History: [
    1-1-2021  [{created} {Evan}]
    ]
    Version: 1.0.0
    Needs: none
    File:    %load-words.red
    Programmer: []
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2021. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    Date: none
]

load-words: function [
    {loads words from one directory path}
    endpoint [file! path!] 
][

    ;; get the file names that contain the definitions, one each word
    words: read endpoint

    ;; strip any files that are not red files
    ;; remove-each this-item words [isnt? suffix? this-item %.red]
    remove-each this-item words [not-equal? suffix? this-item %.red]

    ;; map do to each word in words 
    map :do slappath endpoint words

]