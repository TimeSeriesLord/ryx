#! /usr/bin/red -qs

Red [
    Purpose: {
        To start Ryx that runs atop of 
        the Red Language Interpreter (RLI)
    }
    Notes: { 
        Ryx is a programming system destined for greatness!

        You can think of it as a personal dictionary above the Red global 
        context dictionary of "built in functions."

        The directories with the namespace Zena are tests. You can
        delete those safely.
    }
    History: [
        18-May-2024 [
            added "Zena test namespaces"
            added "comments"
        ]
        19-Apr-2024 [re-write]    
        8-Apr-2021  [{created} {Stone}]
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
    License:   MIT
    Date: 8-Apr-2021
]

;; * don't know if needed
;; the presumption is that garbage collection is not automatic
;; with the RLI at this point
;; I thought I read about this a couple of years ago
;; not pressing to discover status of doing this
recycle/on

;; --------------------------------------
;; bootstrapping
;; --------------------------------------

;; sadly, these word will be loaded again, but it is worth
;; slappath lets us use full path names
;; map lets us apply a arity-1 function to a block
firsts: [
    %fs.slappath.red
    %hof.map.red
]

;; more helpers to get this into the air
seconds: [ 
    %ryx.newdiro.red
    %ryx.inject.red
    %series.snip.red    
    %fs.load-words.red
    ;; %objects.extend.red
    ;; %q.ezr.current.red
    ;; %ezr.diro.red
    ;; %ezr.make-app.red
]


;; path to easyr
;; technically from where this script is
path: system/options/path

;; load firsts, the minimal bootstrap
forall firsts [
    do rejoin [path  %ryx.spells/ firsts/1]
]

;; map-do the seconds, i.e., load 'em into the global context
;; so we can use those as helpers to finish the start up
map :do slappath rejoin [path %ryx.spells/] seconds

;; --------------------------------------
;;  Main Loading ...
;; --------------------------------------


comment {
    SESSION SETTINGS FILE LOAD / CREATE
    
    check for setting file for the various platforms

    as I do not have a computer running Windows or macOS, I can not
    write the code for those.  It should be trivial though.

    if the settings file does not exist, make it
    if it does, read it
}


;; case restricts code to platform
case [

    ;; Is it Linux?
    equal? 'Linux system/platform [

        comment {
            on linux, there are hidden directories and hidden files
            ~/.red is where red has stuff
            inside that . directory we shall put 
        }
        ;; if the directory does not exist, make the directory
        if not exists? dot-dir: rejoin [
            system/options/cache
            %ryx/
        ][
            make-dir dot-dir
        ]



        ;; there should be a settings file in ~./red/ryx
        ;; if the settings file exists, load it 
        ;; otherwise create it
        either exists? ryx.settings: rejoin [
            dot-dir 
            ;; system/options/cache 
            ;;%ryx/ 
            %ryx.settings
        ][ 
            ;; load the saved easyr settings object
            ;; this once was a easyr object, but with the design
            ;; change it is a session object
            session: make object! third load ryx.settings
        ][
            ;; create the sessions file as it does not exist!
            ;; base spec
            specification: [
                ;; user home on linux
                user: first split-path system/options/cache
                ;; easyr home
                home: system/options/path
                ;; settings: system/options/cache
                settings: ryx.settings
                cloudpath: off
                blacklist: none
                first-run: true
                screen: system/view/screens/1/size
                directories: function [

                ][
                    ;; 
                    dirs: sort read %.
                    remove-each dir dirs [any [not dir? dir parse dir [%ryx. skip to end]]]
                    foreach dir dirs [ print first split dir "/"]

                ]
                ignore: function [
                ][
                    ans: ask "Type a list of directory names for Ryx to ignore: "
                    self/blacklist: map :dirize map :to-file to-block ans
                    if false? self/first-run [
                        write self/settings self
                    ]
                    print "Quit Ryx to activate changes."

                ]
                welcome: { 
                        Hey there! ^/
                        Since this is your first time running ryx, you can tell ryx to ignore 
                        directories at start-up. Otherwise, ryx will attempt to load all files 
                        with .red suffixes in all directories it finds below ryx/ ^/

                        Type session/ignore at the prompt. Then type a list of directory names
                        separated by spaces.

                        Type session/directories to see a list of directories that you can ignore.

                        You can use session/ignore anytime to change your ignore blacklist.

                        Press any key to continue ...

                }  

            ] 

            ;; makes the session context
            ;; easyr: context specification
            session: context specification

            ;; welcome first-timers and then turn off welcome screen
            ask session/welcome
            session/first-run: false

            ;; write the sessions object to the directory
            write ryx.settings session

        ]
    ]

    equal? 'Windows system/platform [
        ;; code to be done
        ;; a volunteer's code is welcome
    ]
    equal? 'Mac system/platform [
        ;; code to be done
        ;; a volunteer's code is welcome
    ]
]    


;;---------------------------

comment {

    This is the latest method for loading rxy and anything else. To do it, we use 
    newdiro to make an object dictionary of key-val pairs of names to paths. 

    Then we inject the .red files found on the paths into the global context.

    The design choice for newdiro is object! but could have been a map!, block! or hash!
}

;; make the ryx file paths object
ryx: newdiro session/home

;; inject the rxy namespace into the global dictionary

;; but stops for the unique case of ryx directory load
;; we only wish to load the ryx. namespace directories and 
;; words of the the files contained therein

inject/but ryx ryx

;; if there is a blacklist in the sessions object, we need to exclude the directories it
;; contains and inject the rest
if not none? session/blacklist [

    ;; load the directory
    dirs: reverse sort read %.

    ;; remove files
    remove-each dir dirs [
        any [
            not dir? dir 
            find dir %ryx.
            find dir %.
        ]
    ]

    ;; remove the blacklist and load the rest
    dirs: exclude dirs session/blacklist

    ;; inject the other diretories
    forall dirs [

        ;; name the directory tree object
        set to-word to-string snip copy dirs/1 the-diro: newdiro rejoin [ryx/this dirs/1]
        inject the-diro the-diro
        
    ]

]

;; 17-May-2024 cloud drives detector
;; should run only the first time
;; user can manually change later either by deleting settings file or by
;; manually editing it
;; it is possible to create mini reset app for it, but I do not need it
;; like i should write this above in the first case
case [
    ;; Is it Linux?
    all [
        equal? 'Linux system/platform 
        none? session/cloudpath
    ][ 
        directory: if false? session/cloudpath [
            ask "Cloud directory? (relative directory name or none): "
        ]
        either "none" <> directory [ 
            ;; set the value
            session/cloudpath: rejoin [session/user dirize to-file directory]
        ][
            session/cloudpath: none
        ] 
        ;; write the settings file to the . directory
        write settings session
   ]
]

;; name the cloud drives!
if drives: session/cloudpath [
    make-words read drives drives
]

;; --------------------------------------
;; Path handles
;; --------------------------------------


comment {

    Use newdiro to make handles to paths in directories that might have apps.
    Notice, we're not injecting apps for apps. Yet there is a names space now.

}

;; ryxapps: newdiro/apps rejoin [ryx/this %apps/]

;; --------------------------------------
;; INJECTING
;; --------------------------------------

comment {
    Here is where anyone can inject directories as dictionary volumes.

    This should let any directory anywhere on a fully qualified path to be injected.

    18-May-2024 works!
    tests passed: 

    inject/but  -- stopped the loading of zena.abc but loaded all else
    inject -- loaded it all
}
;; zena: newdiro rejoin [ryx/this %zena/]
;; inject zena zena

;; fix the standard header to the easyr one
system/standard/header: get-header %ryx.header.red


;; unset the words to clean up the dictionary (global context) of pollution
unset [ 
    firsts seconds path dot-dir settings specification
    stores words directory drives dirs
]

;; fancy prompts
;; ☈€ᕲ ⇄ ⇚ ⇛ ᴿᴱᴰ  "»" «
;; system/console/prompt: reduce [ to-clock now/time "« "]
system/console/prompt: " » "
system/console/result: "ʳʸˣ» " 

