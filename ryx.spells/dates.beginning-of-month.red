Red [

    Copyright: {(c) 2021. All Worldwide Rights Reserved.}
    Owner:   "Blastoff Enterprises"
    Date: 31-Mar-2021
    File:    %dirQ.red
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

beginning-of-month: function [
{
	returns the date of the first day of the month 
	which is @months + or - from the @start-date.
}
	mdate [date!] "the user-given date"
	months [integer!] {
		0 = this month
		-n for n-months before
		+n for n-months ahead
	}
][
    mdate: edate mdate months
	mdate/day: 1
	return mdate
]