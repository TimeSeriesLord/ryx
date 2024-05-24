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
	License: 'tbd
]

equalize: function [
	{Returns a block with two blocks of equalized lengths}
	a [series!]
	b [series!]
][
	blank dout
	case [
		longer? a b [
			append dout reduce [slice copy a reduce [1 length? b] b]
		]
		shorter? a b [
			append dout reduce [a slice copy b reduce [1 length? a] ]
		]
	]
	dout
]