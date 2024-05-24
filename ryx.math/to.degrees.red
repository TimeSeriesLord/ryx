Red [ ]

to-degrees: function [
    {convert from radians to degrees}
    rad [number!]
    
][
    ;; Radians × (180° / π) = Degrees
    rad * (180 / pi)

]


