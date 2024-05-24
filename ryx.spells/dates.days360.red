Red [

    
]


days360: define [

	{

		returns the number of days from @date1 to @date2 
		following a 360-day calendar. Each month has 30 days.	
		
		The default calculation uses the U.S. (NASD) method. 
		
		If the starting date is the 31st of a month, 
		it becomes equal to the 30th of the same month. If the ending 
		date is the 31st of a month and the starting date is earlier 
		than the 30th of a month, the ending date becomes equal to 
		the 1st of the next month, otherwise the ending date becomes 
		equal to the 30th of the same month.
	}

	date1 [date!] "Starting date"
	date2 [date!] "Ending date"
	/euro


][

	;; get the years and months, which the formula below needs
	
	yr2: date2/year
	yr1: date1/year
	m2: date2/month
	m1: date1/month

	;; use the actual day for each date
	;; make adjustments by the rules below for each method

	d1: date1/day
	d2: date2/day

	any [
		;; adjustments for European 30/360, aka “30E/360”

		;; If @d1 is 31, set @d1 to 30.
		;; If @d2 is 31, set @d2 to 30.

		if euro [
			if date1/day = 31 [d1: 30]
			if date2/day = 31 [d2: 30]
		]

		;; adjustments for US (NASD) 30/360, aka “bond basis” or “30U/360”
		do [

			any [

				;; If both the start and end dates are on the last day of february, set @d2 to 30.
				if all [
					month?/feb date1
					month?/feb date2
					end-of-month? date1
					end-of-month? date2

				][d1: date1/day d2: 30]
				
				;; If the start date is on the last day of february, set @d1 to 30.
				if all[month?/feb date1][d1: 30 d2: date2/day]  

				;; If @d1 is 30 or 31, and @d2 is 31, set @d2 to 30.
				if all [ 
					any [date1/day = 30 date1/day = 31] date2/day = 31
				][d1: date1/day d2: 30] 

				;; If @d1 is 31, set @d1 to 30
				if date1/day = 31 [d1: 30 d2: date2/day]

			]

		]

	]
	;; The number of days between two dates (@fromDate and @toDate) is:

	return 360 * (yr2 - yr1) + 30 * (m2 - m1) + (d2 - d1)

]


