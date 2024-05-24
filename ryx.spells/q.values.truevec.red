Red [
	Purpose: {Test to see block can be coered into a vector! since Red
	requires all values of a vector to be of the same datatype!}
	Override: false
	Notes: " ^/    "
	Version: 1.0.0
	Date: none
	History: [18-May-2024 ["created" "Stone"]]
	Programmer: [Stone Johnson]
	Tabs: true
	Name: none
	Needs: none
	File: none
	Owner: "Blastoff Enterprises"
	Rights: "© 2024. All Worldwide Rights Reserved."
	License: 'MIT
]

truevector?: function [ 
    {Returns true if values in a block! can make a vector!}
    values [block!]
][
    either error? try [make vector! values][false][true]
]