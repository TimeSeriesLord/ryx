Red [
    Purpose: {
        To get a download link from a public onedrive file 
    }
    Notes: { 
    }
    History: [
        19-Apr-2024 [{created} {Stone}]    
    ]
    Version: 1.1.0
    Needs: none
    File:    %onedrive.hotlink.red
    Word:    none
    Programmer: ["Stone Johnson"]
    Tabs: on
    ;; GUI title bar
    Name: none
    Rights: {© 2024. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
    License:   'tbd
    Date: 19-Apr-2021
] 

hotlink: function [
    {Return a onedrive hot link from an embed link} 
	iframetag [tag!]
][

    replace iframetag "embed?" "download?"
    parse iframetag [to {https} copy url to {"} skip to end]

    return link: to-url url
]
    