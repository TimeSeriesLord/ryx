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

;; overload
_+: :+

+: make op! function [
    {}
    x [scalar! vector! any-string! ]
    y [scalar! vector! any-string! ]
][
    comment {case [
        all [string? x ] [
            return join x y
        ]
        any [
            scalar? x scalar? y
            vector? x vector? y
        ][return x _+ y]
    ] 
	}
	case [
		string? x [ return join x y]
		'otherwise [ return x _+ y]
	]
]