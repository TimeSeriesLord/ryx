Red [
Purpose: {
}
Notes: {
}
History: [
1-1-2021  [{created} {Evan}]
]
Version: 1.0.0
Needs: none
File:    %.red
Word:    [mold-csv]
Programmer: []
Tabs: on
;; GUI title bar
Name: none
Rights: {© 2021. All Worldwide Rights Reserved.}
Owner:   {Blastoff Enterprises}
License:   'tbd
Date: none
]
comment {
	    Example: [
    write %Test.csv Mold-CSV [
        ["Column One" "Column Two" "Total Column"] 
        [1 2 3] 
        [2 3 5] 
        [3 4 7]
    ] 
}

Mold-CSV: function [
	"molds an array of values into a CSV formatted string."
	Array [block!]	"The array of values."
	][
	Page: make block! length? Array
	Line: make string! 1000
	if parse Array/1 [
		some [
			set Heading [word! | string!] into [
				'string! (Type: "String")
				| 'date! (Type: "Date")
				| 'logic! (Type: "Boolean")
				| 'integer! (Type: "Int")
				| 'float! (Type: "float")
				] (
				all [
					string? Heading
					found? find Heading #","
					Heading: mold Heading
					]
				repend Line [
					Heading #":" Type #","
					]
				)
			]
		end
		][
		Array: next Array
		remove back tail Line
		append Line newline
		append Page copy Line
		]
	clear Line
	foreach Row Array [
		foreach Item Row [
			all [
				string? :Item
				found? find Item #","
				Item: mold Item
				]
			all [
				none? :Item
				Item: #" "	; A blank/space works better as a "none" value.
				]
			insert tail Line join :Item #","
			]
		remove back tail Line
		append Line newline
		append Page copy Line
		clear Line
		]

		rejoin Page
	
	]
