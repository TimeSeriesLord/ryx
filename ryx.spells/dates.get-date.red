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
    Word:    [get-date]
    Programmer: []
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2021. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    License:   'tbd
    Date: none
]

get-date: function  [
	{ 
        returns a date in time before or after a given date
	}
	mdate [date!] 
	
	/before bdow [word! string!] "returns the date for a day of week before the date"
	/after adow [word! string!] "returns the date for a day of week after for the date"
    /month "return either the first or last date of the month"
    /quarter "return either the first or last date of the quarter"
    /week "return either the first or last date of the week"
    /year "return either the first or last date of the week"
    /fo
    /lo

][

    

Comment {
	;; if it is not a REBOL date! or a qstring, turn it into a date
    if all [any [block? mdate string? mdate string!] not qd2d][
        mdate: _make/date mdate
    ]
}    

	any [
		if before [
            ;; if it is a full-named day of week, whether string or word
            bdow: to-word slice to-string bdow 3
			switch bdow [
				sun [
                    any [
                        if 7 = mdate/weekday [mdate: mdate - 7 ]
                        if 6 = mdate/weekday [mdate: mdate - 6 ]
                        if 5 = mdate/weekday [mdate: mdate - 5 ]
                        if 4 = mdate/weekday [mdate: mdate - 4 ]
                        if 3 = mdate/weekday [mdate: mdate - 3 ]
                        if 2 = mdate/weekday [mdate: mdate - 2 ]
                        if 1 = mdate/weekday [mdate: mdate - 1 ]
                    ]
                ] 
				mon [
                    any [
                        if 7 = mdate/weekday [mdate: mdate - 6 ]
                        if 6 = mdate/weekday [mdate: mdate - 5 ]
                        if 5 = mdate/weekday [mdate: mdate - 4 ]
                        if 4 = mdate/weekday [mdate: mdate - 3 ]
                        if 3 = mdate/weekday [mdate: mdate - 2 ]
                        if 2 = mdate/weekday [mdate: mdate - 1 ]
                        if 1 = mdate/weekday [mdate: mdate - 7 ]
                    ]
                ]
				tue [
                    any [
                        if 7 = mdate/weekday [mdate: mdate - 5 ]
                        if 6 = mdate/weekday [mdate: mdate - 4 ]
                        if 5 = mdate/weekday [mdate: mdate - 3 ]
                        if 4 = mdate/weekday [mdate: mdate - 2 ]
                        if 3 = mdate/weekday [mdate: mdate - 1 ]
                        if 2 = mdate/weekday [mdate: mdate - 7 ]
                        if 1 = mdate/weekday [mdate: mdate - 6 ]
                    ]
                ]
				wed [
                    any [
                        if 7 = mdate/weekday [mdate: mdate - 4 ]
                        if 6 = mdate/weekday [mdate: mdate - 3 ]
                        if 5 = mdate/weekday [mdate: mdate - 2 ]
                        if 4 = mdate/weekday [mdate: mdate - 1 ]
                        if 3 = mdate/weekday [mdate: mdate - 7 ]
                        if 2 = mdate/weekday [mdate: mdate - 6 ]
                        if 1 = mdate/weekday [mdate: mdate - 5 ]
                    ]
                ]
				thu [
                    any [
                        if 7 = mdate/weekday [mdate: mdate - 3 ]
                        if 6 = mdate/weekday [mdate: mdate - 2 ]
                        if 5 = mdate/weekday [mdate: mdate - 1 ]
                        if 4 = mdate/weekday [mdate: mdate - 7 ]
                        if 3 = mdate/weekday [mdate: mdate - 6 ]
                        if 2 = mdate/weekday [mdate: mdate - 5 ]
                        if 1 = mdate/weekday [mdate: mdate - 4 ]
                    ]
                ]
				fri [
                    any [
                        if 7 = mdate/weekday [mdate: mdate - 2 ]
                        if 6 = mdate/weekday [mdate: mdate - 1 ]
                        if 5 = mdate/weekday [mdate: mdate - 7 ]
                        if 4 = mdate/weekday [mdate: mdate - 6 ]
                        if 3 = mdate/weekday [mdate: mdate - 5 ]
                        if 2 = mdate/weekday [mdate: mdate - 4 ]
                        if 1 = mdate/weekday [mdate: mdate - 3 ]
                    ]
                ]
				sat [
                    any [
                        if 7 = mdate/weekday [mdate: mdate - 1 ]
                        if 6 = mdate/weekday [mdate: mdate - 7 ]
                        if 5 = mdate/weekday [mdate: mdate - 6 ]
                        if 4 = mdate/weekday [mdate: mdate - 5 ]
                        if 3 = mdate/weekday [mdate: mdate - 4 ]
                        if 2 = mdate/weekday [mdate: mdate - 3 ]
                        if 1 = mdate/weekday [mdate: mdate - 2 ]
                    ]
                ] 

			]
		] ;;-if before

		if after [
            adow: to-word slice to-string adow 3
		
			switch adow [
				sun [
                    any [
                        if 7 = mdate/weekday [mdate: mdate + 7 ]
                        if 6 = mdate/weekday [mdate: mdate + 1 ]
                        if 5 = mdate/weekday [mdate: mdate + 2 ]
                        if 4 = mdate/weekday [mdate: mdate + 3 ]
                        if 3 = mdate/weekday [mdate: mdate + 4 ]
                        if 2 = mdate/weekday [mdate: mdate + 5 ]
                        if 1 = mdate/weekday [mdate: mdate + 6 ]
                    ]
                ] 
				mon [
                    any [
                        if 7 = mdate/weekday [mdate: mdate + 1 ]
                        if 6 = mdate/weekday [mdate: mdate + 2 ]
                        if 5 = mdate/weekday [mdate: mdate + 3 ]
                        if 4 = mdate/weekday [mdate: mdate + 4 ]
                        if 3 = mdate/weekday [mdate: mdate + 5 ]
                        if 2 = mdate/weekday [mdate: mdate + 6 ]
                        if 1 = mdate/weekday [mdate: mdate + 7 ]
                    ]
                ]
				tue [
                    any [
                        if 7 = mdate/weekday [mdate: mdate + 2 ]
                        if 6 = mdate/weekday [mdate: mdate + 3 ]
                        if 5 = mdate/weekday [mdate: mdate + 4 ]
                        if 4 = mdate/weekday [mdate: mdate + 5 ]
                        if 3 = mdate/weekday [mdate: mdate + 6 ]
                        if 2 = mdate/weekday [mdate: mdate + 7 ]
                        if 1 = mdate/weekday [mdate: mdate + 1 ]
                    ]
                ]
				wed [
                    any [
                        if 7 = mdate/weekday [mdate: mdate + 3 ]
                        if 6 = mdate/weekday [mdate: mdate + 4 ]
                        if 5 = mdate/weekday [mdate: mdate + 5 ]
                        if 4 = mdate/weekday [mdate: mdate + 6 ]
                        if 3 = mdate/weekday [mdate: mdate + 7 ]
                        if 2 = mdate/weekday [mdate: mdate + 1 ]
                        if 1 = mdate/weekday [mdate: mdate + 2 ]
                    ]
                ]
				thu [
                    any [
                        if 7 = mdate/weekday [mdate: mdate + 4 ]
                        if 6 = mdate/weekday [mdate: mdate + 5 ]
                        if 5 = mdate/weekday [mdate: mdate + 6 ]
                        if 4 = mdate/weekday [mdate: mdate + 7 ]
                        if 3 = mdate/weekday [mdate: mdate + 1 ]
                        if 2 = mdate/weekday [mdate: mdate + 2 ]
                        if 1 = mdate/weekday [mdate: mdate + 3 ]
                    ]
                ]
				fri [
                    any [
                        if 7 = mdate/weekday [mdate: mdate + 5 ]
                        if 6 = mdate/weekday [mdate: mdate + 6 ]
                        if 5 = mdate/weekday [mdate: mdate + 7 ]
                        if 4 = mdate/weekday [mdate: mdate + 1 ]
                        if 3 = mdate/weekday [mdate: mdate + 2 ]
                        if 2 = mdate/weekday [mdate: mdate + 3 ]
                        if 1 = mdate/weekday [mdate: mdate + 4 ]
                    ]
                ]
				sat [
                    any [
                        if 7 = mdate/weekday [mdate: mdate + 6 ]
                        if 6 = mdate/weekday [mdate: mdate + 7 ]
                        if 5 = mdate/weekday [mdate: mdate + 1 ]
                        if 4 = mdate/weekday [mdate: mdate + 2 ]
                        if 3 = mdate/weekday [mdate: mdate + 3 ]
                        if 2 = mdate/weekday [mdate: mdate + 4 ]
                        if 1 = mdate/weekday [mdate: mdate + 5 ]
                    ]
                ] 
			]
		] ;;-if after

        if month [
            any [
                ;; end of month of the month before
                ;; and then the next day
                if fo [mdate: bom mdate ]
                if lo [ mdate: eom mdate ]
            ]
        ] ;;- If month
        
        if quarter [
            any [
                if all [fo month?/jan mdate][ mdate: get-date/month/fo mdate ]
                if all [fo month?/feb mdate][ mdate: get-date/month/fo edate mdate -1]
                if all [fo month?/mar mdate][ mdate: get-date/month/fo edate mdate -2]
                if all [fo month?/apr mdate][ mdate: get-date/month/fo mdate ]            
                if all [fo month?/may mdate][ mdate: get-date/month/fo edate mdate -1]        
                if all [fo month?/jun mdate][ mdate: get-date/month/fo edate mdate -2]
                if all [fo month?/jul mdate][ mdate: get-date/month/fo mdate ]                
                if all [fo month?/aug mdate][ mdate: get-date/month/fo edate mdate -1]
                if all [fo month?/sep mdate][ mdate: get-date/month/fo edate mdate -2]
                if all [fo month?/oct mdate][ mdate: get-date/month/fo mdate]
                if all [fo month?/nov mdate][ mdate: get-date/month/fo edate mdate -1]            
                if all [fo month?/dec mdate][ mdate: get-date/month/fo edate mdate -2]
                
                if all [lo month?/jan mdate][ mdate: get-date/month/lo edate mdate 2]
                if all [lo month?/feb mdate][ mdate: get-date/month/lo edate mdate 1]
                if all [lo month?/mar mdate][ mdate: get-date/month/lo mdate]
                if all [lo month?/apr mdate][ mdate: get-date/month/lo edate mdate 2]            
                if all [lo month?/may mdate][ mdate: get-date/month/lo edate mdate 1]        
                if all [lo month?/jun mdate][ mdate: get-date/month/lo mdate]
                if all [lo month?/jul mdate][ mdate: get-date/month/lo edate mdate 2]                
                if all [lo month?/aug mdate][ mdate: get-date/month/lo edate mdate 1]
                if all [lo month?/sep mdate][ mdate: get-date/month/lo mdate]
                if all [lo month?/oct mdate][ mdate: get-date/month/lo edate mdate 2]
                if all [lo month?/nov mdate][ mdate: get-date/month/lo edate mdate 1]            
                if all [lo month?/dec mdate][ mdate: get-date/month/lo mdate]                            
            ]
        ] ;;- If quarter
        
        if week [
            any [
                ;; if fo [date/before mdate 'Monday ]
                if fo [mdate: mdate - mdate/weekday + 1 ]                
                if lo [ mdate: mdate + (7 - mdate/weekday )]
            ]
        ] ;;- If week       
        
        if year [
            any [
                if all [fo month?/jan mdate][ mdate: get-date/month/fo mdate ]
                if all [fo month?/feb mdate][ mdate: get-date/month/fo edate mdate -1]
                if all [fo month?/mar mdate][ mdate: get-date/month/fo edate mdate -2]
                if all [fo month?/apr mdate][ mdate: get-date/month/fo edate mdate -3 ]            
                if all [fo month?/may mdate][ mdate: get-date/month/fo edate mdate -4]        
                if all [fo month?/jun mdate][ mdate: get-date/month/fo edate mdate -5]
                if all [fo month?/jul mdate][ mdate: get-date/month/fo edate mdate -6]                
                if all [fo month?/aug mdate][ mdate: get-date/month/fo edate mdate -7]
                if all [fo month?/sep mdate][ mdate: get-date/month/fo edate mdate -8]
                if all [fo month?/oct mdate][ mdate: get-date/month/fo edate mdate -9]
                if all [fo month?/nov mdate][ mdate: get-date/month/fo edate mdate -10]            
                if all [fo month?/dec mdate][ mdate: get-date/month/fo edate mdate -11]
                
                if all [lo month?/jan mdate][ mdate: get-date/month/lo edate mdate 11]
                if all [lo month?/feb mdate][ mdate: get-date/month/lo edate mdate 10]
                if all [lo month?/mar mdate][ mdate: get-date/month/lo edate mdate 9]
                if all [lo month?/apr mdate][ mdate: get-date/month/lo edate mdate 8 ]            
                if all [lo month?/may mdate][ mdate: get-date/month/lo edate mdate 7]        
                if all [lo month?/jun mdate][ mdate: get-date/month/lo edate mdate 6]
                if all [lo month?/jul mdate][ mdate: get-date/month/lo edate mdate 5]                
                if all [lo month?/aug mdate][ mdate: get-date/month/lo edate mdate 4]
                if all [lo month?/sep mdate][ mdate: get-date/month/lo edate mdate 3]
                if all [lo month?/oct mdate][ mdate: get-date/month/lo edate mdate 2]
                if all [lo month?/nov mdate][ mdate: get-date/month/lo edate mdate 1]            
                if all [lo month?/dec mdate][ mdate: get-date/month/lo edate mdate 0]                         
            ]
        ] ;;- If year           
        
    ] ;; end any
    return mdate
] ;; end date function
