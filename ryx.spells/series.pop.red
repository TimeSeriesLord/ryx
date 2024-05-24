Red [
	Purpose: {
		Define the pop word
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

pop: function [
"return the first datum of a series and remove it from that series."
	stack [series!] "your input"
	/end 
][
	either end [
		value: last stack 
		;; reverse remove reverse stack
		;; remove at stack length? stack
		remove back tail stack 
	][
		value: pick stack 1 
		remove stack
	]
	value
]

