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
	License: 'MIT
]

bector?: function [
    {Returns true if values can be vector! or a  mathable block!}
    values [block!]
][

    comment {
        date! time! money! = mathy!
        integer! float! percent! = numbers!
    }
    return case [
        ;; any all integer, all float, all percent
        truevector? values [true]
        ;; all dates
        not empty? filter :date? values [true]
        ;; all times
        not empty? filter :time? values [true]
        ;; all money
        not empty? filter :money? values [true]
        'otherwise [false]
      ]
]

