Red []

make-date: function [
    {take usa string dates and make red dates day-month-year}
    d [string! date!]
    ;; /local day mth yr
][
        parse d [copy mth to "/" thru "/" 
            copy day to "/" thru "/" copy yr to end
        ] 
        to-date reduce [
            to-integer day 
            to-integer mth 
            to-integer yr 
        ]

]


