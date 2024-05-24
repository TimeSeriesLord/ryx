Red [

]

from-epoch: function [
        "Return Red date from unix time format"
        epoch [integer!] "Date in unix time format"
    ][
        day: 1-Jan-1970 + (to-integer epoch / 86400) 
        hours:   to-integer epoch // 86400 / 3600
        minutes: to-integer epoch // 86400 // 3600 / 60
        seconds: to-integer epoch // 86400 // 3600 // 60
        return (load rejoin [
            day "/" hours ":" minutes ":" seconds 
        ]) + now/zone
]


 