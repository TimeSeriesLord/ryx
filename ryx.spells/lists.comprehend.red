Red [
	Purpose: "  "
	Override: false
	Notes: " ^/    "
	Version: 1.0.0
	Date: none
	History: [9-May-2024 ["created" "Stone"]]
	Programmer: [Stone Johnson]
	Tabs: true
	Name: none
	Needs: none
	File: none
	Owner: "Blastoff Enterprises"
	Rights: "© 2024. All Worldwide Rights Reserved."
	License: 'tbd
]


comment {
    [ 3*x for x in [0,1,2,3,4,5]]
    [x -> x * 3] [ 1 2 3]
}   

lambda: comprehend: function [  
    {list comprehension of monomial.}
    code [function! block!] {e.g. 1) function [x][3 * X ] 2) [ 3 * x for x in] 3) [x - > 3 * X ]}
    range [block!] "Red block"
][
    ;; if code block
    if block? :code [
        ;; python style
        case [
            in? :code 'for [
                parse code [ 
                    copy fun to 'for
                    skip 
                    copy param to 'in
                ]   
                code: function param fun
            ] 
            ;; common FL style
            'otherwise [
                ;; parse code [ set param word! word! word! copy fun to end ]
                parse code [set param word! '- '> copy fun to end]
                code: function to-block param fun 
            ]
        ]
    ]    

    map :code range
]    
