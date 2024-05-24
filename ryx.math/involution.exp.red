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
    value [numericv! vectors!] 
][
	return case [
		vector? value [
			vector map.2 :power e .. [e (count? value) ] value			
		] 
		all [block? value truevector? value][
			map.2 :power e .. [e (count? value) ] value			
		]
			;; ees: e .. [e (count? value) ]
		all [block? value not truevector? value][
			make error! "Not a true vector"
		]
			;; return vector map.2 :power e .. [e (count? value) ] to-block value			
		'otherwise [
			_exp value
		]
	]

]