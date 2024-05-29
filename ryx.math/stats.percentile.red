Red [
	Purpose: " "
	Override: false
	Notes: " ^/    "
	Version: 1.0.0
	Date: none
	History: [27-May-2024 ["created" "Stone"]]
	Programmer: [Stone Johnson]
	Tabs: true
	Name: none
	Needs: none
	File: none
	Owner: "Blastoff Enterprises"
	Rights: "© 2024. All Worldwide Rights Reserved."
	License: 'MIT
]

percentile: function [
    "Calculate the percentile of a given block of values."
    values [block!] "Block of values"
    percent [float! percent!] "Percentile to calculate (between 0 and 1)"
][
    ; Sort the block in ascending order
    sorted: sort copy values 

    ; Calculate the index based on the percentile
    index: round (length? sorted) * percent 

    ; Handle the case where the index is 0
    either index = 0 [ 
        ; Return the first value
        sorted/1 
    ][
        ; Return the value at the calculated index
        sorted/:index 
    ]
]

