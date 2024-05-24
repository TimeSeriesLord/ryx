Red []

count-in: function [
    "return the count of the value in the series"
    series [series!] 
    value [any-type!]
][
    count: 0
    while [not tail? series] [
        if series/1 = value [count: count + 1]
        series: next series 
    ]    
    count
]

