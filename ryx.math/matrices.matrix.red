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


matrix: function [ 
    pair [pair! block! integer!]
	/init value
][
	if not init [value: copy [] ]

    row: pair/1
    col: pair/2
    ;; cols: replicate [ ] col

    ;; dout
    blank dout 
    ;; for the rows
    loop row [
        append/only dout replicate value col
    ]
    new-line/skip dout on 1

]