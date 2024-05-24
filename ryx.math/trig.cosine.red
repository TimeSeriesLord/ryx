Red [
    Purpose: { }
    Override: yes
    Notes: { 
    }
    Version: 1.0.0
    Date:  none
    History: [ today [{created} {Stone}]  ]
    Programmer: [Stone Johnson]
    Tabs: on
    ;; GUI title bar
    Name: none
    Needs: none
    File:    none
    Owner:   {Blastoff Enterprises}
    Rights: {© 2024. All Worldwide Rights Reserved.}
    License: 'tbd
]


;; override built in
r.cos: :cos

cos: function [
    degrees [number!]
][
    r.cos to-radians degrees
]