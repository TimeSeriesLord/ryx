Red [
    Purpose: { fix value? }
    Override: yes
    Notes: { 
        Red's function fails to match function of Rebol or R3. 
        Red's only tests if a lit-word is a value. That is useless! 
    }
    Version: 1.0.0
    Date: 1-May-2024
    History: [
        1-May-2024  [{created} {Stone}]
    ]
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

;; overridden because it is useless otherwise
_value?: :value?

value?: function [
    { Truly Returns TRUE if the word has a value. }
    value [any-type!]
][
    any [
        ;; none! 
        none? value
        ;; logic!
        logic? value         
        ;; block!
        block? value         
        ;; paren!
        paren? value
        ;; string!
        string? value
        ;; file!
        file? value          
        ;; url!          
        url? value
        ;; char!         
        char? value
        ;; integer!       
        integer? value
        ;; float!         
        float? value
        ;; word!
        word? value
        ;; issue!         
        ;; path!         
        path? value
        ;; vector!        
        vector? value
        ;; hash! 
        hash? value         
        ;; pair!           => [x y]
        pair? value
        ;; percent!       
        percent? value
        ;; tuple! 
        tuple? value        
        ;; map!
        map? value           
        ;; binary!        
        binary? value
        ;; time!           => [hour minute second]
        time? value
        ;; tag!
        tag? value           
        ;; email!          => [user host]
        email? value
        ;; date!
        date? value
        ;; banknote
        money? value
        ;; image!
        image? value

    ]
]

