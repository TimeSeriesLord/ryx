Red [] 

time-between: define [
{
	returns the number of full years, full  months or days between two dates, exclusive
    default is days
}
	date1 [date!]
	date2 [date!]
	/y	{Returns the number of complete years between @date1 and @date2.}
	/m	{Returns the number of complete months between @date1 and @date2.}
	/d	{Returns the number of complete days between @date1 and @date2.}

][

    any [
        if y [
            return either lesser-or-equal? date1/year date2/year [
                date2/year - date1/year
            ][
                date1/year - date2/year
            ]
        ]
        if m [
            return either lesser-or-equal? date1 date2 [
                date2/year - date1/year * 12 + date2/month - date1/month
            ][
                date1/year - date2/year * 12 + date1/month - date2/month
            ]
        ]
        if d [
            return either lesser-or-equal? date1 date2 [
                date2 - date1
            ][
                date1 - date2
            ]
        
        ]        
        return subtract date2 date1
    ]


]
