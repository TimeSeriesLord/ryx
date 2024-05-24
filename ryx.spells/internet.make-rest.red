Red [
    Purpose: { Take an endpoint and make a URL
    }
    Notes: {
    }
    History: [
    4-Apr-2024  [{created} {Pierre}]
    ]
    Version: 1.0.0
    Needs: none
    File:    %.red
    Programmer: []
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2024. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    Date: none    

]

make-url: function [
	 rest [url!]
     resource [block! string!]
	 
][
    return u: either block? resource [
        rejoin [rest resource]
    ][
        join rest resource
    ]
    
]