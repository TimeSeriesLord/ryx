#!/usr/bin/redc

Red []

watchyt: function [

    inurl [url!]
    /other alt-invidious [string! word!]
    /mpv

][
    default: "yewtu.be"

    rule: [
        copy youtube thru ".com/" [copy video to "&" | copy video to end ] end 
    ]

    if all [not pl parse inurl rule] [
        inurl: head inurl
        inurl: join youtube video
    ] 

    any [
        if other [
            browse try [replace inurl "www.youtube.com" alt-invidious] 

        ]
        ;; plays directly from YouTube to MPV
        if mpv [
            call rejoin ['mpv sp znurl]
        ]
        do [
            browse try [replace inurl "youtube.com" default] 
        ]
    ]

    ;; browse try [replace system/script/args/1 "youtube.com" ] 
]

