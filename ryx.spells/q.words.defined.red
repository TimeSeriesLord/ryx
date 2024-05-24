Red []

defined?: function [ 
	{returns true if word is in the dictionary, false otherwise}
	'word 
][
	if error? try [get word][return false]
	return true
]

