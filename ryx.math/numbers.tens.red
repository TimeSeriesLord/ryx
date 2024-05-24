Red [
	Purpose: "Return the length of integer"
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

tens: function [
	{Return the number of tens places}
    n [number!]
][ 
    parse s: join "" n [copy s to "." skip to end] 
    count? s
] 