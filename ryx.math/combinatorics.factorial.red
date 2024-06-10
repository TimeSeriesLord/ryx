Red [
	Purpose: "Factorial"
	Override: false
	Notes: " ^/    "
	Version: 1.0.0
	Date: none
	History: [31-May-2024 ["created" "Stone"]]
	Programmer: [Stone Johnson]
	Tabs: true
	Name: none
	Needs: none
	File: none
	Owner: "Blastoff Enterprises"
	Rights: "© 2024. All Worldwide Rights Reserved."
	License: 'MIT
]

f!: function [
    {Return the factorial of a number}
    n [number!]
][
    return either n = 0 [1][product 1 .. n]
]
