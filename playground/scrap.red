until [
    print first colors.list
    tail? colors.list: next color.list
]

test.switch: function [ 

    x [pair!]
    messages [block!]

][
        switch x [
            8x10 [print messages/1]
            11x14 [print messages/2]
        ]
]

i: 0
until [
    print i: i + 1
    i >= 5
]


lambda: function [
    code [block!]
    list [block!]
][
    parse code [ set var word! word! word! copy expr   to end ]
    code: function to-block var expr 
    map :code list
]

    implies: function [
        {Returns true if truth of c1 implies c2}
        c1 [logic!]
        c2 [logic!]
    ][
        result: (c1 and c2) or not c1
        result
    ]




remove-by: function [
    {Remove first element of a series 'xs which
    satisfies the 'compare rule
        ((a -+ a -+ logic) -+ a -+ [a] -+ [a])
    }
    compare [any-function!]
    z [any-type!]
    xs [series!]
][
    while [not tail? xs][
        if compare z xs/1 [
            ;; insert/only xs z
            remove/part xs 1 
            break
        ]
        xs: next xs
    ]
    xs: head xs
    xs
]


insert-by: function [
    {Insert elem 'z into series xs' according
    to a 'compare rule.
        ((a -+ a -+ logic) -+ a -+ [a] -+ [a])
    }
    compare [any-function!]
    z [any-type!]
    xs [series!]
][
    done?: false
    while [not tail? xs][
        if compare z xs/1 [
            insert/only xs z
            done?: true
            break
        ]
        xs: next xs
    ]

    if not done? [
        insert/only xs z
    ]
    xs: head xs
    xs
]


pythagorean: function [
    {Return the hypoteneuse or a side when knowing hypoteneuse and one side}
    a [number!]
    b [number!]
    /side
][
    either not side [ 
        return (square a) + (square b)
    ][
        return (sqrt a) - (sqrt b)
    ]
    
]


dp: function [
    {return decimal places mathematically}
    numeric [truescalar!]
][ 
    ;; debug
    print numeric

    ;; no decimal places
    if integer? numeric [ return 0]

    ;; TRUESCALAR! is any [integer! float! percent! money!]

   count: 0
    until [
        ;; add to the count
        count: count + 1

        ;; shift decimal point one place, i.e., by 10s
        numeric: numeric * 10

        ;; fall out test
        ;; if the remainder is zero, 
        ;; there are no more decimal places to count
        ;;; zero? round/places (numeric  % 1) 1
        zero?  zz: (numeric  % 1) 
        


        reduce ['numeric numeric 'zz zz 'count count]
    ]
    return count 

]

>> a % 10
== 1.000000000000227
>> a
== 1201.0
>> round/places a 1
== 1201.0
>> round/places a 1 % 1
== 1201

animal: context [
    name: none
    sound: none 
    speak: function [ times [integer!]] [ loop times [ print self/sound ]   ]
]


dog: make animal [ sound: {bark!}] 
cat: make animal [ sound: {meow!}] 
lion: make animal [ sound: {roar!}]
llm: make animal [ sound: {durp!}]

timmy: make dog [name: {timmy}]
tammy: make cat [name: {tammy}]
tommy: make lion [name: {tommy}]
gemini: make llm [name: {llm}]


-- Classes aren't built in; there are different ways
-- to make them using tables and metatables.

-- Explanation for this example is below it.

Dog = {}                                   -- 1.

function Dog:new()                         -- 2.
  newObj = {sound = 'woof'}                -- 3.
  self.__index = self                      -- 4.
  return setmetatable(newObj, self)        -- 5.
end

function Dog:makeSound()                   -- 6.
  print('I say ' .. self.sound)
end

mrDog = Dog:new()                          -- 7.
mrDog:makeSound()  -- 'I say woof'         -- 8.

dog: context [
    name: none
    sound: none 
    speak: function [ times [integer!] ] [ loop times [ print self/sound ]   ]
    new: function [name' [string!] sound' [string!]] [
        make self [
            name: name'
            sound: sound'
            set to-word self/name self
 
        ]
    ]    
]

comment {
;; of course, we could use value-of and thus not need to do the 
;; path rejoin stuff, but that is OK since we are sticking with a pattern
stores: copy [ ]
words: words-of easyr
forall words [
    append stores to-path rejoin ['easyr "/" first words ]
]
;; ditch easyr/this
remove stores

;; load words first in case spells need words
reverse stores

;; load words from these dirs at start up
;; the easyr object words hold the paths
;; and make compatible with REBOL because of easyr/rebol

comment {
stores: reduce [
    easyr/words easyr/spells easyr/rebol easyr/sys 
    easyr/linux easyr/math easyr/misc easyr/conversions
]
}

map :load-words reduce stores 

}


comment {  
;; cloud drives detector
case [
    ;; user supplied path in file
    exists? cloudpath: rejoin [session/settings %easyr/ %cloudpath] [
        make-words read dirize load cloudpath  load cloudpath
    ]
    ;; look for drives
    ;; if cloud drives exist in directory in linux home, name them

    exists? drives: rejoin [session/user %Drives/] [
        make-words read drives drives
    ]    
]
}


        case [
            all [date? start word? steptype ][
                case [
                    ; m = month = 1 m
                    step = 'm [
                        print 'month
                        ;; start: start/month
                        step: 1
                        steptype: 'm
                    ] 
                    ; y = year = 1 yr 
                    step = 'y [
                        print 'year
                        step: 1
                        steptype: 'y
                    ] 
                    ; w = week = 7 
                    step = 'w [
                        print 'week
                        step: 7
                        steptype: 'w
                    ] 
                    ; q = quarter fom = 3 m fom
                    step = 'q [
                        print 'quarter
                        step: 3
                        steptype: 'q

                    ] 
                    ; ql = quarter lom = 3 m eom
                    step = 'ql [
                        print 'last-quarters
                        step: 3
                        steptype: 'ql
                    ] 
                    'otherwise [
                        step: 1
                    ]

                ]
                
            ]
