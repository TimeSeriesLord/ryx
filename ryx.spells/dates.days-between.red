Red [
    Copyright: {(c) 2019. All Worldwide Rights Reserved.}
    Owner:   "Blastoff Enterprises"
    Date: 5-Oct-2019
    File:    %days-betwen.red
    Version: 1.0.0
    Needs: none    
    Name: none
    Purpose: {
        tally the days between todays inclusive of the ending date.
    }    

] 

days-between: function [

    {returns the number of days between two dates inclusive of the ending date
    order is not important}
    date1 [date!] "the further ahead of the two dates"
    date2 [date!] "the further behind of the two dates"

][
   ; return 1 + subtract endDate startDate
    return 1 + either lesser-or-equal? date1 date2 [
        date2 - date1
    ][
        date1 - date2
    ]
]
