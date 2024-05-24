    comment {
    ;; get the header
    ;; and advance the block
    if header [
        dhead: header? data
        data: next data
    ]
    }

    comment {
    if header [
        temp: copy []
        any [
            if block? cols [
                forall cols [
                    append temp pick dhead/5 cols/1
                ]
            ]
            append temp slice dhead/5 cols
        ]
        tuck/front dout temp
    ]
    }


Red [] 

  suck: function [
    {sucks out the data from a block at a field column}
    data [block!]
    cols [integer! block!]
][
    
    ;; return block
    dout: copy [] 
    
    ;; process
    forall data [

        temp: copy []
        
        any [
            if integer? cols [
                append temp data/1/1 
                append temp data/1/:cols 
            ]
            if block? cols [
                forall cols [
                    c: cols/1
                    append temp data/1/:c
                ]
            ]
        ]
        
        tuck/back dout temp
    ]
    return head dout
] 