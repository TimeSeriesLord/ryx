Red [
    Purpose: { Fix Red's load }
    Override: yes
    Notes: { 
        REBOL would let you load blocks. Red does not. Why?
        So this lets it happen.
    }
    Version: 1.0.0
    Date: none
    History: [
       1-1-2021  [{created} {Evan}]
    ]
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

;; override
_load: :load

load: function [
   {Returns a value or block of values by reading and evaluating a source.}
    source       [file! url! string! binary! block.ezr! map!]
     /header      "TBD."
     /all         "Load all values, returns a block. TBD: Don't evaluate Red header. block!"
     /next        "Load the next value only, updates source series word."
        position     [word!] "Word updated with new series position. block!"
     /part        "Limit to a length or position."
        length       [integer! string!] block! 
     /into        "Put results in out block, instead of creating a new block."
        out          [block!] "Target block for results."
     /as          "Specify the type of data; use NONE to load as code."
        type         [word! none!] "E.g. bmp, gif, jpeg, png, redbin, json, csv."

][
   ;; if source is block
    if any [ 
      block? source
      vector? source
      map? source
      hash? source
    ][source: mold source]
    _load source
 ]