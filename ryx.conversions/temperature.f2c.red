Red []

f2c: function [
    {return celcius from fahrenheit}
    temperature [integer! float!]
][
    ;; °C = (℉ - 32) × 5/9
    (temperature - 32) * ( 5 / 9 )
]



 
