Red [ ]

script?: make function! [[
    {Checks file, url, or string for a valid script header.}
    source [file! url! binary! string!]
][
    switch type?/word source [
        file! url! [source: read source]
        string! [source: to binary! source]
    ]
    find-script source
]]


