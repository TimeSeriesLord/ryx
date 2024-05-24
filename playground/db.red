Red [

]
db: [ [name "Bob Soe" street "...." city "..." phone #605-112-2343]
    [name "Sam Doe" street "...." city "..." phone #605-998-4141]
    [name "Eli Noe" street "...." city "..." phone #805-290-4343]
]

dexer: function [ 
    b [block!]
    attrib [word!]
][
    forall db [
    ]

    until [
        if found? find db/1 attrib [
            insert db select db/1 attrib
        ]
        tail? db: skip db  2
    ]
]
