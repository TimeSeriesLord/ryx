Red [
Purpose: {
}
Notes: {
}
History: [
1-1-2021  [{created} {Evan}]
]
Version: 1.0.0
Needs: none
File:    %.red
Word:    [burn]
Programmer: []
Tabs: on
;; GUI title bar
Name: none
Rights: {© 2021. All Worldwide Rights Reserved.}
Owner:   {Blastoff Enterprises}
License:   'tbd
Date: none
]

burn: function [
    {Overwrites CSV files}
	n [file!]
	d [string! block!]	
    /log "if a log file, update"
    /csv "overwrite csv, it's the default"
	
][

	any [
		if log [
			write/append n mold-csv d
		]            
		if csv [
			write n mold-csv d
		]
		;; default
		write n mold-csv d
	]
]