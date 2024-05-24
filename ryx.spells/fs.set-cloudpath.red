Red [
    Purpose: {
        To let user set the cloud drive 
    }
    Notes: { 
    }
    History: [
        19-Apr-2024 [{created} {Stone}]    
    ]
    Version: 1.1.0
    Needs: none
    File:    %ezr.red
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


set-cloudpath: function [
    {manually set the cloud path}
    /path p [file!] "option to give Red file-path name"
][
    if not p [
        prin "Full path to Cloud Drive or Drives>> " p: input
    ]
    write rejoin [easyr/settings %easyr/cloudpath] p
]

 