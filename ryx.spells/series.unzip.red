Red [
	Purpose: {Return two blocks from each block of two values: [[a b]] -> [[a] [b]]}

	Override: false
	Notes: " ^/    "
	Version: 1.0.0
	Date: 10-May-2024
	History: [10-May-2024 ["created" "Stone"]]
	Programmer: [Stone Johnson]
	Tabs: true
	Name: none
	Needs: none
	File: none
	Owner: "Blastoff Enterprises"
	Rights: "© 2024. All Worldwide Rights Reserved."
	License: 'tbd
]

unzip: function [
    {Return two blocks from each block of two values: [[a b]] -> [[a] [b]]}
    zs [block!]
][
    ;; make the temp blocks
    size: count? zs
    xs: make block! size
    ys: make block! size

    forall zs [
        insert/only tail xs zs/1/1
        insert/only tail ys zs/1/2
    ]

    ;; outblock
    result: make block! 2
    ;; put the two unzips into the unzipped for return
    insert/only tail result xs
    insert/only tail result ys
    
    result
]
