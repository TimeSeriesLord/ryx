Red []

antilog: function [

    num [number!]
    /binary 
    /natural
][

    case [
        binary [return power 2 num]
        natural [return power e num] 
        true [return power 10 num]
    ]
 
]