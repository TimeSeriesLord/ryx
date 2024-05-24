Red [
    Purpose: {
        Define snip for the Book of Spells.
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

snip: function [
	"returns a series with an item removed, default is last"
	series [series!] "your data"
	/front "removes the first item from a block! or string!"
][ 

	either front [ 
		;; pop head series
        remove head series
	][
		remove back tail series
        ;; pop/end series
	]
    head series
]