Red []

nth: define [
    {Return the nth root of a number}
     n [integer! float!] "the number"
     nth [integer!] "the nth root"
][ 
        n ** (1 / nth)
]