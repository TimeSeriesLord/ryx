Red  []


to-clock: function [
    "Converts military time to AM/PM format."
    time [time!]
    
][  
    hour: time/hour
    min: time/minute
    
    ;; if 10 < min [min: join "0" min]


    either hour < 12 [
        rejoin [ 
            either 0 = hour [hour: 12][hour] 
            ":" 
            min " " "AM"]
        
    ][
        rejoin [ hour - 12 ":" min " " "PM"]
    ]

]

