def max(L):
 return max_helper(L, L[0])


def max_helper(L, max_val):
 if len(L) == 0:
 return max_val
 if L[0] > max_val:
 return max_helper(L[1:], L[0])
 return max_helper(L[1:], max_val) 

Red [

]

maxl: function [
    l
][
    return max_helper L mv
]

max_helper: function [
    L
    mv
][
     if length? L 0 [return max_val]
     if L/1 > max_val [
        return max_helper 
     ]
] 


increment_by: define [
    k
][
    return x: function [][x + k]
]
 
