Red [] 
edate: define [
{
	returns the date that is the specified number of months 
	before or after a given date.
}
	mdate [date!] "The initial date."
	months [integer!] {The number of months before (negative number) or 
		after (positive number) the initial date.}
][
	;; get the original day
	theday: mdate/day

	;; set the day to the 15th of the month to be safe when skipping to the new month
	mdate/day: 15

	;; skip to the new month
	mdate/month: mdate/month + months

	;; determine what the day should be
	;; since some days are the 31st but some months have 30, 29 or 28 days
	any [

		;; if the original day is the 31st and the new month is one with 31 days
		if all [ is? theday 31 found? find [0 1 3 5 7 8 10 12] mdate/month ] [
			mdate/day: 31
		]

		;; if the original day is the 31st and the new month is one with 30 days
		if all [ is? theday 31 found? find [4 6 9 11] mdate/month ] [
			mdate/day: 30
		]

		;; if the original day is the 30th and the new month is one with either 31 days or 30 days
		if all [ is? theday 30 isnt? mdate/month 2] [
			mdate/day: 30
		]

		;; if the original day is either the 31st or the 30th, the new month is February and it's a leap year
		if all [ 
			any [is? theday 31 is? theday 30] 
			is? mdate/month 2
			leapyear? mdate 
		][
			mdate/day: 29
		]
		;; if the original day is either the 31st or the 30th, the new month is February and it's not a leap year
		if all [ 
			any [is? theday 31 is? theday 30] 
			is? mdate/month 2
			not leapyear? mdate 
		][
			mdate/day: 28
		]
		;; edge cases are over so it's merely the day
		mdate/day: theday
	]
	return mdate
]