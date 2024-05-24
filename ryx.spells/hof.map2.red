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

map.2: function [ 
	{returns a series applying arity 2 function to subset of series! types}
    f [any-function!] "arity 2"
    values [ block! vector! url!] "data"
    farg [integer! float! block!] "second value of passed function"
][
	;; return block or vector
    blank dout

	;; if values is longer, equalize 
	if all [block? farg longer? values farg] [
		values: if longer? a b [slice copy values reduce [1 length? farg] ]
	]

	foreach value values [
		;; apply the function to the arg and append it to the out data
		either not block? farg [ 
			append dout attempt [f value farg]
		][
			append dout attempt [
				f value first farg
			]
			farg: next farg	
		]
    ]
    return either not empty? dout [dout][none]
]