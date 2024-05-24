Red [
Purpose: {
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


filter: function [
    {returns a series! filtered by 'selector function}
    selector [any-function!]  
    series [series!]  
    /divvy
][
    ;; out block
    dout: reduce [copy [] copy [] ]
    foreach element :series [
        either selector :element [
            insert/only tail dout/1 :element
        ][
            insert/only tail dout/2 :element
        ]
    ;; return         
    ]
    either divvy [
        return dout
    ][
        return dout/1
    ]
]

 