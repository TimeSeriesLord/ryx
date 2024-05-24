Red [
	Purpose: " "
	Override: false
	Notes: " ^/    "
	Version: 1.0.0
	Date: none
	History: [today ["created" "Stone"]]
	Programmer: [Stone Johnson]
	Tabs: true
	Name: none
	Needs: none
	File: none
	Owner: "Blastoff Enterprises"
	Rights: "© 2024. All Worldwide Rights Reserved."
	License: 'tbd
]

to-idate: function [
    "Returns a standard Internet date string." 
    date [date!] 
][
    str: form date/zone 
    remove find str ":" 
    if (first str) <> #"-" [insert str #"+"] 
    if (length? str) <= 4 [insert next str #"0"] 
    reform [
        pick ["Mon," "Tue," "Wed," "Thu," "Fri," "Sat," "Sun,"] date/weekday 
        date/day 
        pick ["Jan" "Feb" "Mar" "Apr" "May" "Jun" "Jul" "Aug" "Sep" "Oct" "Nov" "Dec"] date/month 
        date/year 
        to-itime any [date/time 0:00] 
        str
    ]
]