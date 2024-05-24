Red [
	Purpose: "Move all or some from set A into set B. Default: all"
	Override: 9-May-2024
	Notes: " ^/    "
	Version: 1.0.0
	Date: none
	History: [9-May-2024 ["created" "Stone"]]
	Programmer: [Stone Johnson]
	Tabs: true
	Name: none ;; for GUI
	Needs: none
	File: none
	Owner: "Blastoff Enterprises"
	Rights: "© 2024. All Worldwide Rights Reserved."
	License: 'tbd
]

;; override
;;_move: :move

+move: function [ 
    {move all or some from set A into set B. Default: all}
    series [ series! port!]
    target.series [ series! port!]
    /how instructions [integer! pair! block! ] ;;none! 
     
][

    ;; if none? instructions [how: off]
        case [
            all [how integer? instructions ][
                _move/part series target.series instructions
            ]
            all [how any [pair? instructions block? instructions] ][
                len: length? series: at series instructions/1
                _move/part series at target.series instructions/2 len
            ]
            'otherwise [ 
                _move/part series target.series length? series
            ]
        ]
]
