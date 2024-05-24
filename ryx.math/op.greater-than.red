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

;; override
_gt_: :>

>: make op! function [ 
	x [any-type!]
	y [any-type!]
][

	if any [ attempt [truevector? x] vector? x] [
		return map.2 :greater? x y
	]
	return x _gt_ y
]