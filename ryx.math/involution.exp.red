Red [
	Purpose: " "
	Override: true
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

;; override
_exp: :exp

exp: function [
    {Raises e (the base of natural logarithm) to the power specified} 
    value [numericv!] 
][
	case [
		vector? value [
			;; ees: e .. [e (count? value) ]
;;			return vector map.2 :power e .. [e (count? value) ] to-block value			
			return vector map.2 :power e .. [e (count? value) ] value			
		]

		'otherwise [
			return _exp value
		]
	]

]