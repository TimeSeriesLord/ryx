#!/usr/bin/redc

Red []

comment {
    https://twitter.com/Valheimgame

    becomes…

    https://nitter.net/Valheimgame
}

nitter: function [

    handle [word!]
    /full inurl [url!]
    

][
    either full [
        browse try [replace inurl 'twitter.com 'nitter.net]
    ][
        browse inurl: rejoin [https://nitter.net/ handle] 
    ]
]
 


