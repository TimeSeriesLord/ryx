Red [
	Purpose: "Returns a vector after converting integer! scalars to float!"
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

to-floatv: function [ 
	{Return a vector! converting scalars of integer! to float!}
	v [vector!]
][
	return vector map.2 :multiply to-block v 1.0
]