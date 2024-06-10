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
    "Returns true if whole block can be vector! or a univariate block! of same datatype!"
    values [block!]
][
    ;; though char! can be the scalar! of a vector!,
    if not empty? first filter/divvy :char?  values [return false]
    if not empty? first filter/divvy :date?  values [return false]

    comment {
        date! time! money! = mathy!
        integer! float! percent! = numbers!
    }
    return case [
        ;; any all integer, all float, all percent
        truevector? values [true]
        ;; all dates
        ;; empty? second filter/divvy :date? values [true]
        ;; all times
        empty? second filter/divvy :time? values [true]
        ;; all money
        empty? second filter/divvy :money? values [true]
        'otherwise [false]
      ]
]

 