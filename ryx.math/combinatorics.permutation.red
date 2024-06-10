Red [
	Purpose: "Permutation"
	Override: false
	Notes: " ^/    "
	Version: 1.0.0
	Date: none
	History: [31-May-2024 ["created" "Stone"]]
	Programmer: [Stone Johnson]
	Tabs: true
	Name: none
	Needs: none
	File: none
	Owner: "Blastoff Enterprises"
	Rights: "© 2024. All Worldwide Rights Reserved."
	License: 'MIT
]

permutation: function [
    "Return"
    n [integer!] "number in set from which to chose"
    k [integer!] "number of things to choose"
    /without "without replacement of chosen"
][
    either without [

        ;; f! would lead to overflow
        ;; (f! n) / (f! ( n - k ))
        ;; but this math works
        product reduce n .. (n - (-1 + k)) 

    ][
        power n k
    ]

] 