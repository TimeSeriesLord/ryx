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
	License: 'MIT
]

mode: function [
    observations [block! vector!]
][
    ;; get the frequency of observations
    freqobs: frequency observations
    ;; find the highest count
    max-val: max-block values-of freqobs
    
    ;; convert the map! to a block! 
    bobs: to-block freqobs 

    ;; find the max val to do a "reverse select"
    val: first skip bobs -2 + index? find bobs max-val

    ;; if val is a number return it, but if it is non-numerical make it a word! 
    ;; and then return it 
    return either any [number? val money? val][
        val
    ][
        to-word to-string val    
    ]

] 