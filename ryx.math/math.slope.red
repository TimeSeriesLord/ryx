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
Word:    [slope]
Programmer: []
Tabs: on
;; GUI title bar
Name: none
Rights: {© 2021. All Worldwide Rights Reserved.}
Owner:   {Blastoff Enterprises}
License:   'tbd
Date: none
]

slope: function [
    { return the slope of a straight line}
    
	points [block!]

][
	x1: points/1/1
	y1: points/1/2
	
	x2: points/2/1
	y2: points/2/2
	
	res: try [(y2 - y1) / (x2 - x1)]
	any [
		if error? res [ return none ]
		if money? res [return second res]
		return res
	]
]