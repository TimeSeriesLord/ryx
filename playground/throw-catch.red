[   
    loc: [California Coast] 
    color: red
    height: 350

]



code: [
    catch [
        if exists? %slezr.red [x: 99 throw "Doc found"]
        x: 88
        "Doc not found"
    ]
]



code: [
    coin: any random  coins: ['heads 'tails 'heads 'tails]
    catch/name [ 
        ;; catch context
        catch/name [
            repeat i 50 [
                    prin i 
                    if i = 31 [print " nearing throw"]
                    if i = 32 [
                        j: i  
                        throw/name "thrown" coin
                    ]
            ]
            print "out of of repeat loop"
        ] inner: to-word select coins coin
        print [ { throwing to  ...}
        'catcher 
        {resuming loop}
        ]
        loop i [
            prin j
            j: j - 1 
        ]
    ] COIN
    print { out of catches}
]

for i j 1 -1  [
        prin i
    ]