Red [
	Purpose: {Returns the count of elements in a series!}
	Override: false
	Notes: {Length? returns the distance from the current view. 
		Count? tells you how many elements regardless of view.}
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

count?: function [
	{returns the count of elements in a series!}
	series [series!]
][
	index? back tail series
]