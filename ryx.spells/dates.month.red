Red [] 

month: define [  
    {Return the name of the month }
    mdate [date!]    
][
    pick system/locale/months mdate/month
]