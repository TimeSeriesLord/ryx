Red [
	Purpose: "Get a random sample from data"
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

sample: function [
	{Returns either one value or a block of n-values randomly sampled from a block! or vector!}
	values [vectors!] 
	number [integer!]
	/without
][
	;; data out
	blank dout 

	;; convert vector! since any is a block evaluator
	if vector? values [values: to-block values ] 

	case [
		without [
			;; copy since we will destroy
			v: copy values
			loop number [
				append dout picked: random/only v
				pop find v picked
			]

		]
		'otherwise [
			;; build a sample block
			loop number [ 
				append dout any random values
			]
		]
	]

	return either 1 = count? dout [
		first dout
	][
		dout
	]
] 