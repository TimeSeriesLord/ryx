Red [

    Copyright: {(c) 2021. All Worldwide Rights Reserved.}
    Owner:   "Blastoff Enterprises"
    Date: 31-Mar-2021
    File:    %blankQ.red
    Version: 1.0.0
    Purpose: {
        Check to see if a series! lacks elements
    }
    Notes: {
		The empty? built-in function is more like a tail? test. 
        See: 

        >> empty? y: tail [s] 
        == true

        What we wish to have is this:

        >> blank? y: [ ] 
        == true
    }
    History: [ 
    ]
]  

blank?: function [
    {returns true if the block! or string! lacks elements}
 	series [series!]
][

	;; when at the head, if length is 0, it's empty
	series: head series
	return either 0 = length? s [true][false]
]
