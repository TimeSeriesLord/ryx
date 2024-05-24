Red [
    Purpose: { Load test data into the dictionary}
    Notes: {}
    History: [
        9-May-2024  [{created} {Stone}]
    ]
    Version: 1.0.0
    Needs: none
    Programmer: [Stone]
    Tabs: on
    Rights: {© 2024. All Worldwide Rights Reserved.}
    Owner:   {Blastoff Enterprises}
]


[ ]
datatype!	Data	Description	Model datatype!

[
binary!	#{30413642313437323843344442454635} { 
    Encoded string of bytes based on any of these: binary, hex, 64-encoded	any-string!
    }    
char!	#"!"	{one character}
]
	
date!	26-Sep-2016 26-Sep-2016/16:19:50-7:00	date, time, timezone	scalar!
decimal!2	3.1415 1.23E12 0,01 1,2E12	decimal numbers	scalar!
email!	johnnythunders@theheartbreakers.com	email address	any-string!
file!	%data.txt %images/photo.jpg %../scripts/*.r	File name and directory path	any-string!
hash!	make hash! [1 a 2 b 3 c]	an array with a hash table for items to make FIND operations quicker	any-block!
issue!	#445-A1B #805-867-5309	part numbers (issues) telephone numbers	any-string!
integer!	23 19 -99	whole numbers	number!
logic!	true false	boolean values	
money!	$23.19	monetary values	scalar!
money!	CAD$23.19	foreign monetary values	scalar!
pair!	2x4 100x100 -50x-25	coordinates , pairs, sizes	scalar!
percent!1	1% 100% 12.34% 1234%	percents	scalar!
refinement!	/version	modifer that extends meaning	any-word!
string!	"Here is a string" { String braces for line spaning strings}		any-string!
tag!	<html>	markup	any-string!
time!	12:30 20:00:00 -0:25.34	times, 24-clock times, stop watch times	scalar!
tuple!	3.1.5 255.255.0.100 192.168.0.0	versions, colors, IP addresses	scalar!
url!	http://www.youtube.com ftp://ftp.filescity.com/file.txt mailto:info@theknow.com	http ftp mailto	any-string!
word!	ah-ha!	{an English word in a block!	any-word!}
]

     action!         datatype!     action!
     binary!         datatype!     binary!
     bitset!         datatype!     bitset!
     block!          datatype!     block!
     char!           datatype!     char!
     datatype!       datatype!     datatype!
     date!           datatype!     date!
     decimal!        datatype!     float!
     email!          datatype!     email!
     error!          datatype!     error!
     event!          datatype!     event!
     float!          datatype!     float!
     function!       datatype!     function!
     get-path!       datatype!     get-path!
     get-word!       datatype!     get-word!
     handle!         datatype!     handle!
     hash!           datatype!     hash!
     image!          datatype!     image!
     integer!        datatype!     integer!
     issue!          datatype!     issue!
     lit-path!       datatype!     lit-path!
     lit-word!       datatype!     lit-word!
     logic!          datatype!     logic!
     map!            datatype!     map!
     money!          datatype!     money!
     native!         datatype!     native!
     none!           datatype!     none!
     file!           datatype!     file!
     object!         datatype!     object!
     op!             datatype!     op!
     pair!           datatype!     pair!
     paren!          datatype!     paren!
     path!           datatype!     path!
     percent!        datatype!     percent!
     point2D!        datatype!     point2D!
     point3D!        datatype!     point3D!
     port!           datatype!     port!
     ref!            datatype!     ref!
     refinement!     datatype!     refinement!
     routine!        datatype!     routine!
     set-path!       datatype!     set-path!
     set-word!       datatype!     set-word!
     string!         datatype!     string!
     tag!            datatype!     tag!
     time!           datatype!     time!
     triple!         datatype!     triple!
     tuple!          datatype!     tuple!
     typeset!        datatype!     typeset!
     unset!          datatype!     unset!
     url!            datatype!     url!
     vector!         datatype!     vector!
     word!           datatype!     word!

     deep-reactor!   object!       [on-change* on-deep-change*]
     face!           object!       [type offset size text image color menu data enabled? v...
     font!           object!       [name size style angle color anti-alias? shadow state p...
     para!           object!       [origin padding scroll align v-align wrap? parent on-ch...
     reactor!        object!       [on-change*]
     scalar!         typeset!      [char! integer! float! pair! percent! tuple! time! date...
     scroller!       object!       [position page-size min-size max-size visible? vertical...
     tips!           object!       [type offset size text image color menu data enabled? v...
 
