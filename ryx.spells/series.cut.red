Red [
    Copyright: {(c) 2019. All Worldwide Rights Reserved.}
    Owner:   "Blastoff Enterprises"
    Date: 5-Oct-2019
    File:    %cut.red
    Version: 1.0.0
    Needs: none    
    Name: none
    Purpose: {
        Define cut for the spell deck.
    }    

]

cut: function [
	{returns substring from a string!, a subblock from a block!}
 	data [string! block!] "string"
 	here [integer!] "starting position"
 	there [integer!] "number of characters"
][
	slice data reduce [here (here + there - 1)]
] 