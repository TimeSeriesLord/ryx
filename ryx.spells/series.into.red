Red [ ]

into: function [
    {If a value is not found in a series, append it. Return true if added. (Modifies)}
    series [series! port!]
    value
    /case "Case-sensitive comparison"
][
    IF NOT found? either case [
    		find/case series :value
     ][
     	find series :value
    	][append series :value]
]