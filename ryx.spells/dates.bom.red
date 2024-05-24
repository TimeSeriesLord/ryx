Red [

    Copyright: {(c) 2021. All Worldwide Rights Reserved.}
    Owner:   "Blastoff Enterprises"
    Date: 31-Mar-2021
    File:    %bom.red
    Version: 1.0.0
    Purpose: {
        Get the beginning of the month date from a date and an offset
    }
    Notes: {
		This is the lower-level options version. For the fast one, bom
    }
    History: [ 
    ]
]   

bom: define [
	{ returns the date of the beginning of the month for this month} 	
	mdate [date!] "the date of any month"
][
    beginning-of-month mdate 0
]