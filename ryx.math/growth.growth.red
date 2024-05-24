Red [
    Copyright: {(c) 2019. All Worldwide Rights Reserved.}
    Owner:   "Blastoff Enterprises"
    Date: 5-Oct-2019
    File:    %delta.red
    Version: 1.0.0
    Needs: none    
    Name: none
    Purpose: {
        Define a value checking function for the spells deck.
    }    

]

growth: define [
    "returns the change from two numbers"
    end [number!]
    begin [number!]
][
    res: end / begin - 1
    return res
] ;;- delta