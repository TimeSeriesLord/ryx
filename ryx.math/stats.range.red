Red [
	Purpose: "Range of "
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

range: function [ 
    {Return the difference between the maximum and minimum values of a set}
    values [block!]
][ 
    if bector? values [  subtract max-block values min-block values] 
]
