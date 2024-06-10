Red [
	Purpose: "Arithetic mean, for now"
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

mean: function [
    {Return the arithmetic mean for a block of numbers}
    numbers [block! vector!] "numbers in a block!"
    ][
		x: case [
			empty? numbers [return none]
			;; date? first numbers [return make error! "Can't average dates!"]
			bector? numbers [average numbers]
			;; pure? numbers [divide sum numbers count? numbers]
			'otherwise [none]
		]
		return either percent? first numbers [
			to-percent x
		][
			x
		]

] 

