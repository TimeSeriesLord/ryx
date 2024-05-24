;; ==============================================
;; Script: flatten.r
;; downloaded from: www.REBOL.org
;; on: 10-Sep-2016
;; at: 23:12:07.178167 UTC
;; owner: ladislav [script library member who can
;; update this script]
;; ==============================================
Rebol [
	Title: "Flatten"
	File: %flatten.r
	Author: "Ladislav Mecir"
	Date: 03/Jul/2009
	Purpose: {flatten a block}
]

Red [
    Purpose: { }
    Override: no
    Notes: { 
    }
    Version: 1.0.0
    Date:  none
    History: [ today [{created} {Stone}]  ]
    Programmer: [Stone Johnson]
    Tabs: on
    ;; GUI title bar
    Name: none
    Needs: none
    File:    none
    Owner:   {Blastoff Enterprises}
    Rights: {© 2024. All Worldwide Rights Reserved.}
    License: 'tbd
]
 

flatten: function  [

	{Return a block! from a nested block! by taking the values from the inner blocks}
	block [block!]
	
][
	result: make block! 0
	parse block rule: [
		any [
			pos: block! :pos into rule
			| skip (insert/only tail result first pos)
		]
	]
	result
]
