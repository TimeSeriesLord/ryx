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

transpose: function [ 
    {Return a matrix with after interchanging the rows with columns}
    m [matrix!]
][
    ;; get the dimension of the matrix. cool! i wrote the function
    ;; moments ago on a whim

	;; old matrix
    spec: dim m

	;; if it is a row vec, return a col vec
	if 1 = spec/2 [ return align m]

	;; new matrix
    spec: to-pair reduce [spec/2 spec/1]

    
    ;; new matrix
	dout: matrix spec

	;; for columns of new matrix
	repeat j spec/2 [
		;; for rows of new matrix
		repeat i spec/1 [

			;; fill the ith-jth item of the new matrix
			;; with the jth-ith item of the old 
			dout/:i/:j: m/:j/:i
		]
	]
	dout

]


