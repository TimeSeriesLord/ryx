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

;;override
_sqrt: :sqrt

sqrt: function [
	{Returns the square root of a number or scalars in vector!}
	number [numericv!]
][
	case [
		vector? number [
			return vector map :_sqrt to-block number
		]
		'otherwise [
			return _sqrt number
		]
	]
]
