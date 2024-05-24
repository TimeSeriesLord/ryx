Red [
	Purpose: "Properly write values to clipboard"
	Override: false
	Notes: " ^/    "
	Version: 1.0.0
	Date: 9-May-2024
	History: [9-May-2024 ["created" "Stone"]]
	Programmer: [Stone Johnson]
	Tabs: true
	Name: none
	Needs: none
	File: none
	Owner: "Blastoff Enterprises"
	Rights: "© 2024. All Worldwide Rights Reserved."
	License: 'tbd
]

to-clipboard: function [
	{properly write values to clipboard}
	value
][
	write-clipboard mold value
]
