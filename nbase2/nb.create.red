Red []

new: function [ 

    {create a new dbf}

][ 
    ;; loop until done

    forever [
        
        fn: "Filename?"
        
        
        if equal? "yes" ans: ask "break? " [break]
    ]

]