Red [

]
roll: function [
    {returns the results of a random roll of a die or dice, dice in block}
    d [block!]
    /dice 
][
    if 6 <> length? die [return none]
    if dice [
        return reduce [any random/secure die any random/secure die ]
    ]
    any random/secure die  
]

roll: function [
    {returns the results of a random roll of a die}
    rocks [block!]
][
    if dice: nested? rocks [
        die1: rocks/1
        die2: rocks/2
        if any [
            6 <> length? die1
            6 <> length? die2     
        ][ return none]
        return reduce [any random/secure die1 any random/secure die2 ]
    ]
    if 6 <> length? rocks [return none]
    any random/secure rocks
]

 