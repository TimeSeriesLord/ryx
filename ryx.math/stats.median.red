Red [] 

median: function [
    "return the midpoint value in a series of numbers; half the values are above, half are below."
	b [block! string!]
][

	if string? b [
		b: to-block replace/all b "," ""
	]

	sort b
	length: length? b
	case [
	
		odd? length [
            return pick b  round/up (length? b) | 2
		]
         ;; 1 / 2 * x is the same as x / 2
         ;; the block is merely the sum of the two numbers in the middle
		even? length [
		    ;;return 1 | 2 * sum reduce [pick b length | 2 pick b 1 + (length | 2)]
            average reduce [pick b length / 2 pick b 1 + (length / 2)]
		]
	]
]

