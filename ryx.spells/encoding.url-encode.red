Red []

url-encode: define [
    "take a http:// string and convert it into a url!"
    url-string [string!]

][

    ;; split the string
    ;; get the second bit
    ;; encode it
    ;; join it with http://
    
    join http:// uencode second split url-string "http://"
]