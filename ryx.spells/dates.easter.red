Red [] 
easter?: define [
    {Return the date for Easter given a year}
    year [integer!] {Year for whitch you want the easter date}
    
] [
    a: year // 19
    b: to integer! year / 100
    c: year // 100
    d: to integer! b / 4
    z: b // 4
    f: to integer! b + 8 / 25
    g: to integer! b - f + 1 / 3
    h: 19 * a + b - d - g + 15 // 30
    i: to integer! c / 4
    k: c // 4
    c: z + i * 2 + 32 - h - k // 7
    b: to integer! a + (11 * h) + (22 * c) / 451
    a: h + c - (7 * b) + 114
    to date! reduce [
        a // 31 + 1
        to integer! a / 31
        year
    ]
]