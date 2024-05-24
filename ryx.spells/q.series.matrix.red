Red [
    Copyright: {(c) 2019. All Worldwide Rights Reserved.}
    Owner:   "Blastoff Enterprises"
    Date: 5-Oct-2019
    File:    %arrayQ.red
    Version: 1.0.0
    Needs: none    
    Name: none
    Purpose: {
        Check if array datatype!.
    }    

]

matrix?: nested?: function  [
     "returns true if evaluation results in an array (block! of block!(s)" 
     value [any-type!]
][
       parse value [() some block! end]
]