Red [
	Purpose: {Returns a block of blocks from the interleaved values of two blocks}
	Override: false
	Notes: " ^/    "
	Version: 1.0.0
	Date: 12:42:17
	History: [12:42:17 ["created" "Stone"]]
	Programmer: [Stone Johnson]
	Tabs: true
	Name: none
	Needs: none
	File: none
	Owner: "Blastoff Enterprises"
	Rights: "© 2024. All Worldwide Rights Reserved."
	License: 'tbd
]

zip: function [
    {Returns a block of blocks from the interleaved values of two blocks}
    xs [series!]
    ys [series!]
][
    blank result
    ;; which is smaller?
    either (count? xs) <= (count? ys) [ 
        smaller: head xs
        bigger: head ys
    ][
        smaller: head ys
        bigger: head xs
    ]

	;; using the smaller, take one from the bigger to pair with one from
	;; the smaller
    forall smaller [
        insert/only tail result reduce [smaller/1 bigger/(index? smaller) ]
    ]
    head result
]
