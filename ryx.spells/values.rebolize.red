Red [
    Purpose: { Add Rebolize to the Spells Dictionary
    }
    Notes: {
    }
    History: [
    1-1-2021  [{created} {Evan}]
    ]
    Version: 1.0.0
    Needs: none
    File:    %.red
    Programmer: []
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2021. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    Date: none
]

rebolize: function  [
    {returns a transmuted block from a block of strings or array blocks with strings}
	indat [block!] "block! of string! values to transmute into Red values"
    ;; /nested "an array, a block of blocks"
	
][
    ;; output
    dout: copy []

    nested: either array? indat [true][false]

    ;; if the source block! is nested
    any [
        ;; if block of blocks
        if nested [
            ;; transmute the values of the inner blocks
            forall indat [
                temp: copy [] 
                append temp map :transmute indat/1 
                tuck dout temp
            ]
        ]
        ;;default
        append dout map :transmute indat
        
    ]
    return dout
]

comment [
    	;; set up the output block
	output: copy []
    
    any [
    
        if nested [
	
            ;; while there are blocks of data			
            foreach sub indat [
            
                ;; init the temp block for each sub-block of data
                temp: copy []
                
                ;; for every would-be datum in a sub-block 
                ;; 	transmute that datum 
                ;; 	then append it to the temp block

                forall sub [
                    append temp transmute first sub
                ]
                
                ;; when done with the sub-block
                ;;  append it to the final block
                tuck/back output temp
                
            ] 
        ]
        ;;default
        do [
            forall indat [
                append output transmute first indat
            ]
        ]
    ] 
	return output
]