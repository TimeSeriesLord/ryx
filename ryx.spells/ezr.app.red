Red [

]

app: function [
    {makes an app from a block of paths}
    ;; f [file!]
    ;; 'wd 
    /these folders [block!]
][

    case [
        these [

        ]
        true [
            
        ]
    ]

]

comment {
    map :load-words reduce folders

    case [
        these [
        ]
        true [
            folders: copy [] 
            append folders  diro/spells
            map :load-words reduce folders
        ]
    ]

        ;;diro: make-diro f
    set to-word join to-string wd "o" make-diro :wd
    if empty? words-of get to-word join to-string wd "o" [
        folders: read get :wd
    ]
    map :load-words reduce folders

}
 