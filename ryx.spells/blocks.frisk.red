Red [
    Purpose: {
        Define frisk word for the Red Dictionary
    }
    Notes: {
    }
    History: [
    1-1-2021  [{created} {Evan}]
    ]
    Version: 1.0.0
    Needs: none
    File:    %.red
    Word:    [frisk]
    Programmer: []
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2021. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    License:   'tbd
    Date: none
] 

frisk: define [

    {returns what is found inside an array}
    
    blocks [block!] "array to search"
    sval  [any-type!] "the value to find"
    
    /point "return the index of the find"
    /exact "match from left to right, for any-string!(s)"

    /header
    
 ][
    
    ;; be sure to be at the head of the block
 	blocks: head blocks

    ;; if there is a header, then advance the block because we do not want to count
    ;; the header block of an array
    
    if header [
        blocks: next blocks 
    ]         
    

    any [
    
        ;; match only sval from left to right rather than anywhere in block
        if all [exact any-string? sval] [

                length: length? sval
                
                ;; look through block until hitting the tail
                ;; take the current value
                ;; slice it to the exact length of the search value
                ;; compare the two
                until [
                
                    if true? parse slice blocks/1 length [sval][
                        either point [ 
                            return (index? blocks) 
                        ][
                            return blocks/1
                        ] 
                    ]
                    ;; test for truth
                    tail? blocks: next blocks
                ]
                ;; since fallen thru the loop nothing has been found return none
                return none
            ] ;;- if exact

        ;; default       
        do [
            until [  
                if found? find f: blocks/1 sval [
                    either point	[ 
                        return (index? blocks)
                    ][
                        return blocks/1
                    ]                
                ] ;;-if 

                ;; advance in the array and test to see if at the end
                tail? blocks: next blocks		
            ]
            ;; fallen thru so return none because nothing is found
            return none
        ]
    ] ;;- any
] ;;- frisk