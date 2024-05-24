Red [
	Purpose: {
		Define Tuck for the Easyr Spells Dictionary
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

tuck: function [
    { tuck a block inside another block at front or back. back is default}
	a [series!]
	b [any-type!]
	
	/front "tuck a block inside another block at the front"
	/back "tuck a block inside another block at the back"

][
	any [
		if front [insert/only a b] 
		if back [append/only a b]
		append/only a b
	]
	head a
]