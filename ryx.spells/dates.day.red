Red [
    Copyright: {(c) 2021. All Worldwide Rights Reserved.}
    Owner:   "d/b/a Blastoff Enterprises"
    Date: 31-Mar-2021
    File:    %day.red
    Version: 1.0.0
    Purpose: {
        Defines day
    }
    Notes: {
    }
    History: [ 
    ]    
] 
day: define [  
    {returns the Day of the Week from a date!}
    mdate [date!]
][
    pick system/locale/days mdate/weekday 
]
