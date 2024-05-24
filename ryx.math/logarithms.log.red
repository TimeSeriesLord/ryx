
Red [
    Purpose: {
        Define word naming a wrapper function to logarithmic math.
    }
    Override: no
    Notes: { 
    }
    Version: 1.0.0
    Date:  none
    History: [ 24-May-2024 [{created} {Stone}]  ]
    Programmer: [Stone Johnson]
    Tabs: on
    ;; GUI title bar
    Name: none
    Needs: none
    File:    none
    Owner:   {Blastoff Enterprises}
    Rights: {© 2024. All Worldwide Rights Reserved.}
    License: 'MIT
]


log: function [
    {Returns the logarithm for a number given a base. 
    The default is base 10.}
    number [numericv!]
    /base  bnum [integer!] {The base to calculate upon.}
    /natural "The natural log."
    /binary "base 2 log"
][
    case [
        vector? number [
            return map.2 :rnd case [
                base [
                   map.2 :divide map :log-e to-block v log-e bnum
                ]
                binary [ map :log-2 to-block number]
                natural [  map :log-e to-block number] 
                true [ map :log-10 to-block number]
            ] 2            
        ]
        'otherwise [
            return case [
                base [  round/ceiling ((log-e number) / (log-e bnum))]
                binary [   log-2 number]
                natural [   log-e number] 
                true [   log-10 number]
            ]
        ]
    ]
]    
  