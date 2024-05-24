Red [


]
;; overwrite extend since it is not implemented
_extend: :extend
extend: function [
    {returns either a new map! from a map! extended by
    a map! block! or hash! or a new object! extended by 
    an object! or block!
     }
     obj          [object! map!] 
     spec         [block! hash! map! object!] 
][
    case [

        ;; extending a map! 
        all [map? obj not object? spec ] [ 
            _extend obj spec
        ]

        ;; extending an object with block
        all [object? obj block? spec ] [ 

            ;; make the block into an object
            temp: context spec

            ;; then it will construct with reflection
            extend obj temp
         ]
        
        ;; extending an object with object
        all [object? obj object? spec ] [ 

            ;; reflect replaces using second from REBOL 2
            construct/with reflect spec 'body obj
        ]         

    ]
]