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
	License: 'MIT
]

mean: function [
    {return the arithmetic average for a block of numbers}
    numbers [block! vector!] "numbers in a block!"
    ][
		x: case [
			empty? numbers [return none]
			date? first numbers [return make error! "Can't average dates!"]
			vector? numbers [average numbers]
			bector? numbers [divide sum numbers count? numbers]
			'otherwise [none]
		]
		return either percent? first numbers [
			to-percent x
		][
			x
		]

] 

