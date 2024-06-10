 Red [
    Purpose: { }
    Override: no
    Notes: { 
    }
    Version: 1.0.0
    Date:  1-1-2021
    History: [ today [{created} {Stone}]  ]
    Programmer: [Stone Johnson]
    Tabs: on
    ;; GUI title bar
    Name: none
    Needs: none
    File:    none
    Owner:   {Blastoff Enterprises}
    Rights: {© 2021. All Worldwide Rights Reserved.}
    License: 'tbd
]

map: function [
    {return a new series after applying a function to all values of a series}
    f [any-function!]
    series [series!]
][
    result: make series length? series
    foreach value series [
        insert/only tail result f :value
    ]
    result
]

