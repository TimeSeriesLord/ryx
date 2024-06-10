Red [
	Purpose: "Check for pure blocks"
	Override: false
	Notes: " ^/    "
	Version: 1.0.0
	Date: none
	History: [8-Jun-2024 ["created" "Stone"]]
	Programmer: [Stone Johnson]
	Tabs: true
	Name: none
	Needs: none
	File: none
	Owner: "Blastoff Enterprises"
	Rights: "© 2024. All Worldwide Rights Reserved."
	License: 'MIT
]

pure?: function [
    "Returns true if all the values of the block! are of the same datatype!"
    values [block!]
][
    flag: false
    case/all [
        ;; integer
        all [
            not empty? first b: filter/divvy :integer? values 
            empty? second b 
        ] [flag: true]
        ;; float
        all [
            not empty? first b: filter/divvy :float? values 
            empty? second b 
        ] [flag: true]
        ;; date
        all [
            not empty? first b: filter/divvy :date? values 
            empty? second b 
        ] [flag: true]
        ;; char
        all [
            not empty? first b: filter/divvy :char? values 
            empty? second b 
        ] [flag: true]
       all [
            not empty? first b: filter/divvy :money? values 
            empty? second b 
        ] [flag: true]
       all [
            not empty? first b: filter/divvy :time? values 
            empty? second b 
        ] [flag: true]
       all [
            not empty? first b: filter/divvy :word? values 
            empty? second b 
        ] [flag: true]
       all [
            not empty? first b: filter/divvy :lit-word? values 
            empty? second b 
        ] [flag: true]

    ]
    flag
]