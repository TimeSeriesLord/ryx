Red []

open-tabs: function [
    urls [block!]
][
    ;;browser: {yandex-browser --new-window}
    browser: {desktop-defaults-run -b}
    action: to-string reduce [ 
        browser 
        sp
        "--new-window"
        sp
        reduce urls
        sp
        "&exit"
    ]    
    call/shell action
]