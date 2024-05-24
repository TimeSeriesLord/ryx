Red [

]
def?: function [
	{returns the definition of a word, if defined, none otherwise}
	'word
][
	either defined? :word [
		get word
	][ none]
]
