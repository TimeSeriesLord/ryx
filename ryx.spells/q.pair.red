Red [
	Purpose: "Check if value is a pair or can be made into one."
	Override: yes
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
_pair?: :pair?


pair?: function [ 

    value [any-type!]
][

	if block? value [attempt [value: to-pair value]]
	_pair? value 
]    
