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
	License: MIT
]

shorter?: function [
	"Returns true if A is shorter than B"
	a [series!] 
	b [series!]
][
	lesser? length? a length? b
]