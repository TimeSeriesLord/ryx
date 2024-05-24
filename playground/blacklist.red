Red [

]

blacklist: has [ 

][ 
    forward?: ask "Set up blacklist? [Y/n] "
    if not "Y" = forward? [return none]
    ;; if any ["n" = forward? "^(esc)"  = forward?] [return none]

    thelist: ask "Enter list of directories for easyr to ignore at launch: " 
    ;;if any ["^(esc)"  = thelist] [return none]
    to-block thelist

]
