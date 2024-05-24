Red [
    Purpose: {
        To make unions from values in blocks!
    }
    Notes: {
    }
    History: [
    4-Apr-2021  [{created} {Evan}]
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
    Date: 4-Apr-2021
]

unionize: function [
    {Returns a Make unions from lists. Use this for creating parsesets.}
    list [block!]
][
    ;; get the length of the block because we need one less for loop count
    len: -1 + length? list
    ;; out block that we construct
    ;; dout: copy []
    ;; for a block
    ;; insert the word union the requisite number of times
    loop len [
        insert list 'union
    ]
    list 
]