Red [
    Purpose: { Define words for parsing }
    Override: no
    Notes: { 
    }
    Version: 1.0.0
    Date: 4-Apr-2021
    History: [
        4-Apr-2021  [{created} {Stone}]
    ]
    Programmer: [Stone Johnson]
    Tabs: on
    ;; GUI title bar
    Name: none
    Needs: none
    File:    none
    Owner:   {Blastoff Enterprises}
    Rights: {© 2021. All Worldwide Rights Reserved.}
    License: 'tbd
]

;;------------------------------------
;; SPACE
;;-----------------------------------
;; `spacer: `whitespace: charset [#"^A" - #" " #"^(7F)" #"^(A0)"]
; `ws: `whitespace: charset {     }
`ws: `whitespace: `space: charset reduce [tab newline #" "]

;;---------------------------------
;; NUMBERS
;;---------------------------------

`figure: charset [#"0" - #"9"]
`figures: [some `figure]

;;---------------------------------
;; WORDS
;;---------------------------------

`letter: charset [#"a" - #"z" #"A" - #"Z"]
`letters: [some `letter]
`word: [some [`letter | "-"]] 

;;------------------------------------
;; PUNCTUATION MARKS
;;-----------------------------------
;; note: ellipses consists of 3 spaced periods

;; stop mark, question mark, exclamation mark
`endmark: charset {.?!}

;; comma, semicolon, colon
`pausemark: charset {,;:}

;; hyphen, dash
`dash: charset {-_—}

;; parentheticals, parentheses, brackets, braces
`braces: reduce ['some charset {{}}]
`brackets: reduce ['some charset {[]}]
`parentheses: reduce ['some charset {()}]

`parentheticals: reduce unionize [`braces `brackets `parentheses]

;; apostrophe, quotation marks
`quotemark: charset {'"}

;; Spanish punctuation
`spanishmark: charset {¡¿}


;;------------------------------------
;; WEATHER MARKS
;;-----------------------------------

`cf: `celsius-fahrenheit: charset {℃ ℉}

;;------------------------------------
;; COMMERCE MARKS
;;-----------------------------------

`currency.sym: charset [#"¢" #"£" #"¥" #"$"]
`currency.mark: charset {.,'}
`currency: reduce unionize [`currency.sym `currency.mark `figure]


;;------------------------------------
;; BUSINESS
;;-----------------------------------

`shortmark: charset {@#&}

;;------------------------------------
;; PHRASE
;;-----------------------------------
`phrase: [ 
    some [
        `whitespace | `word | `figure 
        | `pausemark | `dash 
        | `parentheticals | `quotemark | `spanishmark | `celsius-fahrenheit
        | `currency | `shortmark
    ]
]

;;------------------------------------
;; SENTENCE
;;-----------------------------------

`sentence: [ 
    `phrase some `endmark
]

;;------------------------------------
;; MATH
;;-----------------------------------

`decimal.point: charset {.}
`msep: charset {,'}
`ops: charset {*/-+}
`comparison: charset {<>=}

`mathmark: reduce unionize [ `decimal.point `msep `ops `comparison ] 

;; Mathematical Operators 2200–22FF
`math.ops: charset [#"∀" - #"⋿"]

;; Miscellaneous Mathematical Symbols-A 27C0–27EF
`math.misc.1: charset [#"⟀" - #"⟯"]

;; Miscellaneous Mathematical Symbols-B 2980–29FF
`math.misc.2: charset [#"⦀" - #"⧿"]

;; Supplemental Mathematical Operators 2A00–2AFF
`math.sup: charset [#"⨀" - #"⫿"]

`greek: charset [#"Α" - #"ω"]

;; Greek and Coptic 0370–03FF
`greek.coptic: charset [#"Ͱ" - #"Ͽ"]

;; Mathematical Alphanumeric Symbols 1D400–1D7FF
`math.an: charset [#"𝐀" - #"𝟿"]

;; Math Superscript
`math.super: charset [#"⁰" - #"⁾"]

;; Math Subscript
`math.sub: charset [#"₀" - #"₎"]

`mathexp: [
    some [
        `ws | `figure | `letter | `parentheticals
        | `greek.coptic | `greek
        | `mathmark | `math.ops | `math.misc.1 | `math.misc.2
        | `math.sup `math.an | `math.super | `math.sub
    ]
]

;;---------------------------------
;; DATES
;;---------------------------------

`month.names: [
    "January" | "February" | "March" 
    | "April" | "May" | "June" 
    | "July" | "August" | "September" 
    | "October" | "November" | "December" 
] 

`month.abbs: [
    "Jan" | "Feb" | "Mar" 
    | "Apr" | "May" | "Jun" 
    | "Jul" | "Aug" | "Sep" 
    | "Oct" | "Nov" | "Dec"
]

`months: [`month.names | `month.abbs]

;; "8/6/1906" "08.06.1906"
;; "1906/08/06" "06-09-20"
;; "July 4, '76" "July 4, 1776"
;; "4 July, '76" "4 July, 1776
;; "Jan-1976" "Jan 1976"


`date.sep: [slash | stopmark | `dash | comma ]

;; "8/6/1906" "08.06.1906"
`date.1: `d1: [2 [1 2 `figure `date.sep ] [4 `figure | 2 `figure]]

;; "1906/08/06" "06-09-20"
`date.2: `d2:  [ [4 `figure | 2 `figure] 2 [ `date.sep 1 2 `figure ] ]

;; "July 4, '76" "July 4, 1776"
`date.3: `d3: [ `months `ws 1 2 `figure comma `ws [4 `figure | "'" 2 `figure] ]

;; "4 July, '76" "4 July, 1776"
`date.4: `d4: [ 
    1 2 `figure `ws `months opt `ws comma `ws 
    [4 `figure | "'" 2 `figure] 
]

;; "Jan-1976" "Jan 1976"
`date.5: `d5: [ `months [`ws | `dash] 4 `figure]

;;---------------------------------
;; HELPERS FOR FAKE TYPES
;;---------------------------------

`area.code: [
    ;; "(345)" or "345"
    [`parentheses 3 `figure `parentheses  |  3 `figure  ]
    ;; "345-" "345 " "(345) "
    any [ `dash | space ] 
]



;;---------------------------------
;; Fake Types
;;---------------------------------

;; [B]

;; fake-type! "$12.99"
!banksum: [some `currency.symmark]

;; [D]


;; "8/6/1906" "08.06.1906"
;; "1906/08/06" "06-09-20"
;; "July 4, '76" "July 4, 1776"
;; "4 July, '76" "4 July, 1776
;; "Jan-1976" "Jan 1976"

!date: [
    `date.1 | `date.2 | `date.3 | `date.4 | `date.5
]

;; [O]

;; "1st" "2nd" "4rd" "4th" "100th" "71st"
!ordinal: [ `figures [ "st" | "nd" | "rd" | "th" ] ]

;; [T]


!telephone:  [ 
    `area.code
	3 `figure
	any [ `dash | space ]
	4 `figure
]


!temperature: [

    `figures 0 3 `ws `cf

]
;;---------------------------------
;; SPECIAL RULES
;;---------------------------------

~clean.comma: [mark: (mark: skip mark -1 remove mark) :mark]

