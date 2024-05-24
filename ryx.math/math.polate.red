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
	Word:    [polate]
	Programmer: []
	Tabs: on
	;; GUI title bar
	Name: none
	Rights: {© 2021. All Worldwide Rights Reserved.}
	Owner:   {Blastoff Enterprises}
	License:   'tbd
	Date: none
]

polate: function [
    { return polated point}
	points [block!]
	x [number!]
 
	
][
	m: slope points
	;; m: slope points
	return m * x + y-intercept points m
] 