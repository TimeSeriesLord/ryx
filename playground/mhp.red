;; insert stats shead
    ;; print "before"
    ;; print mold doors
    ;; print doors
    ;; print ["contestant pick " cpick]
    ;; print ["contestant new pick " cpick]

Red [
]


shead: ['trial 'stay 'switch 'outcome 'pct]
stats: [0 0 0 0 0]

;; the set up
trials: to-integer ask "how many times? "
action: ask "stay (s) switch (w) coin toss (t)? "


loop trials [

    ;; set the stage at random
    ;; stage: random [0 0 1]
    stage: random/secure [0 0 1]
    doors: [d1 d2 d3]
    n: 0
    forall doors [
        n: n + 1
        set doors/1 stage/:n
    ]

    ;; contestant pick a door
    ;; cpick: to-integer ask "pick a door? "
    cpick: any random ['d1 'd2 'd3]

    ;; carol, remove a goat!
    ;; print "Carol, remove a goat!"

    ;; exclude the contestant first pick from removal of a goat
    doors: exclude doors reduce [cpick]

    case [
        ;; both doors have goats, remove at random
        all [ zero? get doors/1 zero? get doors/2  ][
            remove random doors
        ]
        ;; remove if it has a goat
        zero? get doors/1 [remove doors]
        ;; remove if it has a goat
        zero? get doors/2 [remove at doors index? find doors doors/2] 
    ]

    ;; reset the stage
    sort append doors cpick
    
    ;; stay or pick
    ;; print "stay or switch?"

    ;; 50-50
    ;; decision: any random ["stay" "switch"]

    decision: case [
        equal? action "s" ["stay"]
        equal? action "w" ["switch"]
        equal? action "t" [ any random ["stay" "switch"] ]
    ]


    ;; switching
    if equal? decision "switch" [
        cpick: first difference doors reduce [cpick]
    ]

    ;; update stats
    ;; update trial
    change at stats 1 stats/1 + 1
    ;; update decisions
   case [
        equal? decision "switch" [ change at stats 3 stats/3 + 1]
        'otherwise [change at stats 2 stats/2 + 1]
    ] 
    ;; update outcome 
    if equal? get cpick 1 [change at stats 4 stats/4 + 1]

    ;; calculate win pct
    change at stats 5 to-percent divide stats/4 stats/1

]
    ;; insert time at head
    insert stats today
    insert stats time
    stats: head stats

 

