Red [
	Purpose: "Convert block! or vector! into string! of various types"
	Override: false
	Notes: " ^/    "
	Version: 1.0.0
	Date: none
	History: [29-May-2024 ["created" "Stone"]]
	Programmer: [Stone Johnson]
	Tabs: true
	Name: none
	Needs: none
	File: none
	Owner: "Blastoff Enterprises"
	Rights: "© 2024. All Worldwide Rights Reserved."
	License: 'MIT
]

stringify: function [ 
    {Returns stringified data from block! or vector!}
    values [vectors!] 
	/pickle "preserve as Red"
	/each "string each element, preserve block!"
	/csv "to csv"
	/json "to json. preserves vector!"
	/sep "comma-separated string"
	/clipboard
][
	dout: case [

		;; preserve as Red 
		pickle [ 
			mold values
		]

		;; string each element, preserve block!
		each [ 
			if vector? values [ values: to-block values]
			map :to-string values
		]
		csv [
			if vector? values [ values: to-block values]
			to-csv values 
		]
		sep [
			snip stringify/csv values
		]
		json [
			to-json values

		]
		'otherwise [
			form values
		]
	]
	return either clipboard [
		to-clipboard dout
	][
		dout
	]

]
