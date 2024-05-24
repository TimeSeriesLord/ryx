Red [
    Purpose: {Returns a value  accumulated  from applying a   function [ accumulator list element],  head to tail.}
    Override: no
    Notes: { Known in comp sci depts as "fold left"
        base.value: mult  = 1
        base.value: add = 0
    }
    Version: 1.0.0
    Date:  none
    History: [ today [{created} {Stone}]  ]
    Programmer: [Stone Johnson]
    Tabs: on
    ;; GUI title bar
    Name: none
    Needs: none
    File:    none
    Owner:   {Blastoff Enterprises}
    Rights: {© 2024. All Worldwide Rights Reserved.}
    License: 'tbd
]

foldl: function [
    {Returns a value accumulated from applying a function [ accumulator list.element],  head to tail.}
    f  [any-function!] "binary function in form :func.name"
    base  [any-type!] {model datatype at its base value, e.g., 0 or "" }
    series [series!] "list of relevant elements"
][
    accumulator: base 
    while [not tail? series][
        accumulator: f accumulator first series
        series: next series
    ]
    ;; result
    accumulator
]