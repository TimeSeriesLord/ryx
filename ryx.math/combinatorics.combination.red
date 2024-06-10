Red [
	Purpose: " "
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

combination: function [ 
    "Return the number of ways to choose  aka binomial coefficient"
    n [integer!] "number in set from which to choose"
    k [integer!] "number of things to chosen"
][
    (f! n) / ((f! k) * (f! (n - k) ))
]
