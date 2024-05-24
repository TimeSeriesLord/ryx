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

_.**: :**

**: make op! function [
    {Returns a number raised to a power (exponent). Non-destructive}
    number [numericv!] "base value"
    exponent [integer! float!] "The power (index) to raise the base value by."
][
    ;; if it is a vector, overcome Red so we can apply vector math
    ;; on each element of the vector
    case [

        vector? number [
            return vector map.2 :power to-block number exponent 
        ]
        'otherwise [
           return number _.** exponent
        ]
        
    ]
]