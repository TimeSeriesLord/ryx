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

frequency: function [
    observations [block! vector!]
][
    frequencies: make map! []
    
    foreach observation observations [
        either found? found: find frequencies observation [
            frequencies/:observation: frequencies/:observation + 1
        ][
            frequencies/:observation: 1
        ]

    ]
    
    return frequencies
]
