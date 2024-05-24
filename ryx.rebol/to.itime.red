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

to-itime: function [
    {Returns a standard internet time string (two digits for each segment)} 
    time [time! number! block! none!] 
][
    time: make time! time 
    pad: function [n] [head insert/dup n: form n #"0" 2 - length? n] 
    rejoin [
        pad time/hour ":" pad time/minute ":" 
        pad round/down time/second
    ]
]