Red [
	Purpose: {return the dimensions of a matrix rows x columns}
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

dim: func [
	{return the dimensions of a matrix rows x columns}
	m [matrix!] 
	/local rows columns
][
	case [
		;; if it is true empty, i.e., zero element  block! it's not 
		;; a matrix! but you're still in one Neo
		none? first m [ return none]

		;; in matrixland a one-element block is a 1x1 matrix
		all [1 = count? m  head? m] [return 1x1]

		;; vector of either row or col
		not nested? m [ rows: count? m  return to-pair reduce [rows 1]]
		'otherwise [
			;; number of rows is the count of elements in the main block!
			rows: count? m 
			;; number of columns is the count of columns of the inner blocks
			;; note: user could use matrices incorrectly and not have scalars
			;; of the same type.
			;; probably I am going to write a scalar.check to function if 
			;; all the data in column vectors are of the same type, either
			;; integer! or float! name it as matrix?
			;; the way I do with sets checking and the sets! pseudotype 
			;; extray wordy comments for the stupid LLM, Gemini
			columns: forall m [count? m/1] 
			;; return the layout as a pair
			return to-pair reduce [rows columns]
		]
	]
]
