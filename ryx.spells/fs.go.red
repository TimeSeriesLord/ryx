Red [
	Purpose: { Define go for the Spells Dictionary
	}
	Notes: {
	}
	History: [
	1-1-2021  [{created} {Stone}]
	]
	Version: 1.0.0
	Needs: none
	File:    %.red
	Word:    [cd]
	Programmer: []
	Tabs: on
	;; GUI title bar
	Name: none
	Rights: {© 2021. All Worldwide Rights Reserved.}
	Owner:   {Blastoff Enterprises}
	License:   'tbd
	Date: none
]

;; override
;; r.cd: :cd

comment {
..: function [

][
	return first split-path where
]
}
	
go: function [
	"go to directory" 
	dir [string! url! file! integer!]
][

	case [
		attempt [zero? dir] [what-dir]
		any [value? 'dir file? dir][
			change-dir dir
		]
		value? 'dir [ 
			change-dir to-red-file to-string dir
		]
	]
]

