Red [
	Purpose: "Inject a directory structure as dictionary into the global context"
	Override: false
	Notes: ""
	Version: 1.0.0
	Date: none
	History: [
		18-May-2024 [added {comments}]
		17-May-2024 ["created" "Stone"]
	]
	Programmer: [Stone Johnson]
	Tabs: true
	Name: none
	Needs: none
	File: none
	Owner: "Blastoff Enterprises"
	Rights: "© 2024. All Worldwide Rights Reserved."
	License: 'MIT
]

inject: function [
	'namesspace "The top-level name of the namespace"
	nsobject [object!] "the file names path object!"
	/but
][
	;; of course, we could use value-of and thus not need to do the 
	;; path rejoin stuff, but that is OK since we are sticking with a pattern
	stores: copy [ ]
	words: words-of nsobject
	forall words [
		append stores to-path rejoin [namesspace "/" first words ]
	]
	;; but primarily is for this: easyr/this
	;; it is ugly
	;; but many times, likely, there could be only a top level directory  
	if but [
		remove stores
	]
	
	;; load words first in case spells need words
	;; likely this is not needed and if it is for the initial
	;; easier load, then the design is fairly fragile
	reverse stores

	comment {
		These comments and code were yanked from %ezr.red
		as this was part of the initial design 

		;; load words from these dirs at start up
		;; the easyr object words hold the paths
		;; and make compatible with REBOL because of easyr/rebol

		stores: reduce [
			easyr/words easyr/spells easyr/rebol easyr/sys 
			easyr/linux easyr/math easyr/misc easyr/conversions
		]
	}

	;; likely I should re-think the load-words thing
	;; the design makes me feel shaky
	map :load-words reduce stores 

]
