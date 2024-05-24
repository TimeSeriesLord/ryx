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
Word:    [date-dif]
Programmer: []
Tabs: on
;; GUI title bar
Name: none
Rights: {© 2021. All Worldwide Rights Reserved.}
Owner:   {Blastoff Enterprises}
License:   'tbd
Date: none
]

date-dif: function [
{
	Returns the difference between two dates.
}
	date1 [date!]
	date2 [date!]
	/y	{Returns the number of complete years between @date1 and @date2.}
	/m	{Returns the number of complete months between @date1 and @date2.}
	/d	{Returns the number of complete days between @date1 and @date2.}

][
	if y [
		return either lesser-or-equal? date1/year date2/year [
            date2/year - date1/year
        ][
            date1/year - date2/year
        ]
    ]
    ;; (YEAR(LDate)-YEAR(EDate))*12+MONTH(LDate)-MONTH(EDate)
    ;; EDate = Earlier Date 
    ;; LDate = Later Date
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
