
     char!           datatype!     char!
     date!           datatype!     date!
     decimal!        datatype!     float!
     float!          datatype!     float!
     integer!        datatype!     integer!
     money!          datatype!     money!
     percent!        datatype!     percent!
     time!           datatype!     time!
     tuple!          datatype!     tuple!


     action!         datatype!     action!
     binary!         datatype!     binary!
     bitset!         datatype!     bitset!
     block!          datatype!     block!
     datatype!       datatype!     datatype!
     email!          datatype!     email!
     error!          datatype!     error!
     event!          datatype!     event!
     file!           datatype!     file!
     function!       datatype!     function!
     get-path!       datatype!     get-path!
     get-word!       datatype!     get-word!
     handle!         datatype!     handle!
     hash!           datatype!     hash!
     image!          datatype!     image!
     issue!          datatype!     issue!
     lit-path!       datatype!     lit-path!
     lit-word!       datatype!     lit-word!
     logic!          datatype!     logic!
     map!            datatype!     map!
     matrix!         datatype!     block!
     native!         datatype!     native!
     none!           datatype!     none!
     object!         datatype!     object!
     op!             datatype!     op!
     pair!           datatype!     pair!
     paren!          datatype!     paren!
     path!           datatype!     path!
     point2D!        datatype!     point2D!
     point3D!        datatype!     point3D!
     port!           datatype!     port!
     ref!            datatype!     ref!
     refinement!     datatype!     refinement!
     routine!        datatype!     routine!
     set!            datatype!     block!
     set-path!       datatype!     set-path!
     set-word!       datatype!     set-word!
     string!         datatype!     string!
     tag!            datatype!     tag!
     triple!         datatype!     triple!
     typeset!        datatype!     typeset!
     unset!          datatype!     unset!
     url!            datatype!     url!
     vector!         datatype!     vector!
     word!           datatype!     word!

     number!         typeset!      [integer! float! percent!]
     truescalar!     typeset!      [integer! float! percent! money!]

     numeric!        typeset!      [char! integer! float! percent! time! date!...
     numericv!       typeset!      [integer! float! vector! percent!]

     scalar!         typeset!      [char! integer! float! pair! percent! tuple...
 


     vector.ezr!     typeset!      [block! vector!]
        block.ezr!      typeset!      [block! vector! hash!]
     all-word!       typeset!      [word! set-word! lit-word! get-word! refine...
     any-block!      typeset!      [block! paren! path! lit-path! set-path! ge...
     any-dstruct!    typeset!      [block! object! vector! hash! map!]
     any-function!   typeset!      [native! action! op! function! routine!]
     any-get!        typeset!      [get-word! get-path!]
     any-list!       typeset!      [block! paren! hash!]
     any-lit!        typeset!      [lit-word! lit-path!]
     any-logic!      typeset!      [none! logic!]
     any-number!     typeset!      [char! integer! float! pair! tuple! time! d...
     any-object!     typeset!      [object! error! port!]
     any-path!       typeset!      [path! lit-path! set-path! get-path!]
     any-point!      typeset!      [point2D! point3D!]
     any-set!        typeset!      [set-word! set-path!]
     any-string!     typeset!      [string! file! url! tag! email! ref!]
     any-type!       typeset!      [datatype! unset! none! logic! block! paren...
     any-word!       typeset!      [word! set-word! lit-word! get-word!]
     external!       typeset!      [event!]
     default!        typeset!      [datatype! none! logic! block! paren! strin...
     series!         typeset!      [block! paren! string! file! url! path! lit...

     face!           object!       [type offset size text image color menu dat...
     font!           object!       [name size style angle color anti-alias? sh...
     deep-reactor!   object!       [on-change* on-deep-change*]
     internal!       typeset!      [unset!]
     immediate!      typeset!      [datatype! none! logic! char! integer! floa...
     para!           object!       [origin padding scroll align v-align wrap? ...
     reactor!        object!       [on-change*]
     scroller!       object!       [position page-size min-size max-size visib...
     tips!           object!       [type offset size text image color menu dat...

