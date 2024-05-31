Red [
	Purpose: " "
	Override: false
	Notes: " ^/    "
	Version: 1.0.0
	Date: none
	History: [today ["created" "Stone"]]
	Programmer: [Stone Johnson]
	Tabs: true
	Name: none
	Needs: none
	File: none
	Owner: "Blastoff Enterprises"
	Rights: "© 2024. All Worldwide Rights Reserved."
	License: 'MIT
]

skew: function [
    {Return the measure of skewness}
    values [block! vector!]
	/population
][
    ; Skewness is undefined for less than 3 values
    if lesser? (n: count? values) 3 [return none]  

    ;;(Sum of cubed deviations from the mean) / (n * standard deviation^3)
	either population [
		(sum cube (map.2 :subtract values mean values)) / (n * cube stddev/population  values)
	][

		(sum cube (map.2 :subtract values mean values)) / (n * cube stddev values)
	]
]

comment {
Skewness =
∑(yi - ymean)
(n - 1) x (sd)³

}	
