Red [
	Purpose: "Get the element in a matrix, row by column"
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
	License: 'tbd
]

el: element: function [
	{Return the i-th j-ith element from A}
    matrix [matrix!] 
    index [pair!] "i-thxj-th"
][
    row: index/1 
    col: index/2 
    if not nested? matrix [
        return first at matrix col
    ] 
    matrix/:row/:col
]