Red [
Purpose: {
}
Notes: {
}
History: [
1-1-2021  [{the change} {by whom}]
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

square: function [
    {returns a squared number}
    number [numericv! vectors!]
][
    if block? number [
        return map.2 :power number 2
    ]
    return number ** 2
]