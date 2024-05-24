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
Word:    [y-intercept]
Programmer: []
Tabs: on
;; GUI title bar
Name: none
Rights: {© 2021. All Worldwide Rights Reserved.}
Owner:   {Blastoff Enterprises}
License:   'tbd
Date: none
] 

y-intercept:  define [
    { return y-intercept for a straight line}
	points [block!]
	m [number!]
][
	either block? first points [
		x: points/1/1
		y: points/1/2
	][
		x: points/1
		y: points/2
	]
	
	;; if the point is a date-number pair from a time series
	if date? x [x: date-dif/d x points/2/1]
	;; b =  - mx 1+ y1
	return (negate x * m) + y
] 
