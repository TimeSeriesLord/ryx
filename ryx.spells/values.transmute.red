Red [] 

transmute: function [
    "Transmutes string datum into RVC datum"
    value "the value to transmute into RVC recognized data"
][
    any [
        ;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        ;;PSEUDO-TYPES DEFINED IN %parsesets.red
        ;; ````````````````````````````````````````````````````````````    
        ;; attempt [ if !number? value [return to-number value] ]
        ;; attempt [ if .!holders? value [return none ] ]
        ;; attempt [ if !date? value [return _to-date value] ]
        ;; attempt [ if !string? value [return to-string value] ]
        return value: attempt [load value]
    ]
    
]

comment {
transmute: define [
    "Transmutes string datum into RVC datum"
    value "the value to transmute into RVC recognized data"
][
    ;; rid strings of crap spaces
    if string? value [
        value: trim/lines value
    ]
    
    any [
    
        ;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        ;;PSEUDO-TYPES DEFINED IN %parsesets.red
        ;; ````````````````````````````````````````````````````````````    

        attempt [ if !date? value [return _to-date value ] ]
        attempt [ if !numstr? value [
                return to-number clean-string value 
            ] 
        ]
        attempt [ if !ordinal? value [return to-string value ] ]
        attempt [ if !cash? value [return _to-cash value ] ]        
        attempt [ if !percent? value [return to-number value ] ]        
        attempt [ if .!holders? value [return none ] ]
        
        ;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        ;;REBOL SHOULD KNOW THESE TYPES
        ;; ````````````````````````````````````````````````````````````        
        ;; number-ish
        ;; tuple! pair! money! date! time!
        ;; attempt [if parse to-block value [tuple!][return to-tuple value]]
        attempt [if parse to-block value [pair!][return to-pair value]]
        attempt [if parse to-block value [date!][return to-date value]]        
        attempt [if parse to-block value [time!][return to-time value]]		
		attempt [if parse to-block value [money!][return to-money value]]

        ;; string-ish
        ;; url! email! file! path!
        attempt [if parse to-block value [email!][return to-email value]]
        attempt [if parse to-block value [url!][return to-url value]]
        attempt [if parse to-block value [path!][return to-path value]]

        ;; tricksters
        ;; float! integer! file! 
        attempt [if parse to-block value [file!][return to-file value]]
		attempt [if parse to-block value [integer!][return to-integer value]]
		attempt [if parse to-block value [float!][return to-decimal value]]        
    ]
    return value
]

And a variant that will try to convert the non-quoted fields:
line: {123,"hello",45.6,"wo,rld"}
probe parse line [
    collect [
        some [
            {"} keep to {"} skip opt comma
            | copy value to comma skip keep (attempt [load value])
        ]
    ]
]
For the splitting example on whitespaces, until we get a proper Parse tutorial, here is one:
red>> split "hello^/brave   world^-^/  " " ^-^/"
== ["hello" "brave" "world"]
^/ is the escaped character 10 (Line-feed)
^- is the escaped character 9 (Tab)
}