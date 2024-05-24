Red [] 

end-of-month: define [
{
	Return the date of the last day of the month which is @months + or - from the @start-date.
}
	mdate [date!]
	months [integer!]
][

    ;; set the day to the first
     ;; mdate/day: 1

    ;; go ahead or behind the number of months plus one month
    ;; mdate/month: mdate/month + months

    mdate: edate mdate months

    any [

        ;; if the new month is one with 31 days
        if all [ find [0 1 3 5 7 8 10 12] mdate/month ] [
            mdate/day: 31
        ]

        ;; if the new month is one with 30 days
        if all [ find [4 6 9 11] mdate/month ] [
            mdate/day: 30
        ]

        ;; if the new month is February and it's a leap year
        if all [ 
            is? mdate/month 2
            leap-year? mdate 
        ][
            mdate/day: 29
        ]
        ;; if the new month is February and it's not a leap year
        if all [ 
            is? mdate/month 2
            not leap-year? mdate 
        ][
            mdate/day: 28
        ]
    ]
    return mdate
]