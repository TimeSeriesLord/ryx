Red [
	Purpose: "Removes unwanted characters from strings or values from blocks"
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

decruft: function [
	{Removes cruft things from strings or blocks, default: ","}
	series [string! block!]
	/thing t [any-type!] 
][
	either thing [el: t][el: comma]
	replace/all series el " "
]