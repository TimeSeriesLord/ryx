Red []

soundex: function [
    {Returns the Census Soundex Code for the given string}
    string [any-string!] "String to Encode"
][

    code: make string! ""

    ; Create Rules
    set1: [["B" | "F" | "P" | "V"](val: "1")]
    set2: [["C" | "G" | "J" | "K" | "Q" | "S" | "X" | "Z"](val: "2")]
    set3: [["D" | "T"](val: "3")]
    set4: [["L"](val: "4")]
    set5: [["M" | "N"] (val: "5")]
    set6: [["R"](val: "6")]
    
    ; Append val to code if not a duplicate of previous code val
    soundex-match: [[set1 | set2 | set3 | set4 | set5 | set6 ] 
        (if val <> back tail code [append code val]) ]

    ; If letter not a matched letter its val is 0, but we only care
    ; about it if it is the first letter.
    soundex-no-match: [(if (length? code) = 0 [append code "0"])]

    either all [string? string string <> ""] [
        string: uppercase trim copy string

        foreach letter string [
            parse to-string letter [soundex-match | soundex-no-match]
            if (length? code) = 4 [break] ;maximum length for code is 4
        ]
    ] [
        return string ; return unchanged
    ]
    change code first string ; replace first number with first letter
    return code
]