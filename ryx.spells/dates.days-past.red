Red [
    Copyright: {(c) 2019. All Worldwide Rights Reserved.}
    Owner:   "Blastoff Enterprises"
    Date: 5-Oct-2019
    File:    %day-of-year.red
    Version: 1.0.0
    Needs: none    
    Name: none
    Purpose: {
        Define days-past for spells deck.
    }    

] 

days-past: define [
{
	returns the number of days past since given date of a year.
	The first day of the year has value 1.
}
	dateGiven [date!]
][
	; add 1 subtract the-date make date! reduce [the-date/year 1 1]
	1 + subtract dateGiven make date! reduce [dateGiven/year 1 1]
]