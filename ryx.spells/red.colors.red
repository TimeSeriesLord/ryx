Red [

]

get-colors: function [
    {get the colors of Red at start-up}
][  
    dout: copy []
    colors: load help-string tuple!
    forskip colors 2 [append dout colors/1]
    return dout
]

colors: context [
    names: none

    get-colors: function [
    {get the colors of Red at start-up}
    ][  
        dout: copy []
        colors: load help-string tuple!
        forskip colors 2 [append dout colors/1]
        self/names: copy dout
    ]   
    color?: function [
        name
    ][
        if none? self/names [self/get-colors]
        get first find colors/names :name
    ]
    list: function [

    ][
        lnames: copy self/names
        forall lnames [print lnames/1]
    ]
]



