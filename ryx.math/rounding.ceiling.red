Red [

    Copyright: {© 2019. All Worldwide Rights Reserved.}
    Owner:   "Blastoff Enterprises"
    License: 'TBD
    Date: 19-Oct-2019
    File:  %ceiling.red
    Version: 1.0.0
    Needs: none    
    Name: none
    Purpose: {
        sugar for round/ceiling
    }
]

ceiling: function [
    "returns the nearest integer which is greater than number."
    f [float!]
][
    to-integer round/ceiling f

]