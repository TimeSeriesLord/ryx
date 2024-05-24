Red [
Purpose: { Console helpers
}
Notes: {
}
History: [
3-Apr-2021  [{created} {Evan}]
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

history: function [

    /replay "Replay expression by index selection. 0 to escape"
    /save "Save history to file"
    /grab "Save section of history"
][
    any [
        if replay [
            dohist: does [
                d: copy system/console/history 
                forall d [print rejoin [index? d " : " first d]] 
                do pick head d to-integer ask "!> "
            ]

        ]

        if grab [
            dohist: does [
                d: copy system/console/history 
                forall d [print rejoin [index? d " : " first d]] 
                ans: ask "what lines: x y? "            
                ans: to-block ans

                ;; if the save path does not exist
                if not exists? hd: %.red/history/ [make-dir hd ]

                ;; write-clipboard to-string slice d reduce ans
                ;; name it
                ;; to fix the time part of the name by swapping dots for colons
                ;; first coerce it into a string
                write/lines rejoin [
                    hd
                    %code.snip.
                    now/date '. replace/all to-string now/time ":" "."
                    %.red
                    
                ] slice d reduce ans
            ]
        ]

        if save [

            ;; if the save path does not exist
            if not exists? hd: %.red/history/ [make-dir hd ]

            ;; name it
            ;; to fix the time part of the name by swapping dots for colons
            ;; first coerce it into a string
            write/lines rejoin [
                hd
                %console.history.
                now/date '. replace/all to-string now/time ":" "."
                %.red
                
            ] head reverse copy system/console/history
        ]
        dohist: does [repeat k length? x: system/console/history [print [";" x/:k]]]

    ]
    dohist
]

