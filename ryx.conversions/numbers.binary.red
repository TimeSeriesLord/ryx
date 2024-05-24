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

binary: function [
    {Returns binary number from integer}
    int [integer!]
][ 
	comment { 
		red uses its own internal representation for binary data
		>> to-binary 1
		== #{00000001}

		so we need to use built-in enbase function 
		to encode a string into a binary-coded string using base 2
		since (BASE-64 default) 

		because red returns a zero padded string, presumably as 
		placeholders for binary representation based on memory,
		we need to strip those to return an integer in a 
		binary number "layout"

		also, built in to-integer is too smart so we don't need to
		strip those 0s by code:

		but red does not support integers beyond a size
		hence large strings must stay as strings

	}

	;; encode it as a binary string
	bin: enbase/base to-binary int 2

	;; return an integer in the supported range
	if all [int > -1 int <= 1023]  [
		return to-integer bin
	]
	;; otherwise return a string representation without
	;; leading zeroes
	while [ 
		#"0" = first bin
	][
		pop bin
	]	
    return bin
]
