#!/bin/bash
## DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
## Yes, I realize there are a lot of sleeps in here. It doesn't look fancy if it takes a tenth of a second.
## If you want it to be instant just remove all the lines involving sleep and also the from "Generating" to "echo -ne '\n'"
## Shhh.... don't tell anyone.


echo "Please enter folder name: "
read foldername
echo ""



echo "Generating..."
echo -ne '                                           (0%)\r'
sleep 0.25
echo -ne '##                                         (5%)\r'
sleep 0.25
echo -ne '####                                       (10%)\r'
sleep 0.25
echo -ne '######                                     (15%)\r'
sleep 0.25
echo -ne '########                                   (20%)\r'
sleep 0.25
echo -ne '##########                                 (25%)\r'
sleep 0.25
echo -ne '############                               (30%)\r'
sleep 0.25
echo -ne '##############                             (35%)\r'
sleep 0.25
echo -ne '################                           (40%)\r'
sleep 0.25
echo -ne '##################                         (45%)\r'
sleep 0.25
echo -ne '####################                       (50%)\r'
sleep 0.25
echo -ne '######################                     (55%)\r'
sleep 0.25
echo -ne '########################                   (60%)\r'
sleep 0.25
echo -ne '##########################                 (65%)\r'
sleep 0.25
echo -ne '############################               (70%)\r'
sleep 0.25
echo -ne '##############################             (75%)\r'
sleep 0.25
echo -ne '################################           (80%)\r'
sleep 0.25
echo -ne '##################################         (85%)\r'
sleep 0.25
echo -ne '####################################       (90%)\r'
sleep 0.25
echo -ne '######################################     (95%)\r'
sleep 0.25
echo -ne '########################################   (95%)\r'
sleep 0.25
echo -ne '########################################## (100%)\r'
echo -ne '\n'

echo "=-=-=-=-=-=-=-=-=-=-=-=-="
mkdir -p  "$HOME/Desktop/$foldername"
echo "Folder Created"

sleep 0.1

echo "Populating Folder"

sleep 0.1

mkdir -p  "$HOME/Desktop/$foldername/images"
echo "Image folder created"

sleep 0.1

mkdir -p  "$HOME/Desktop/$foldername/javascript"
echo "Javascript folder created"

sleep 0.1

cat <<EOF >"$HOME/Desktop/$foldername/reset.css"
html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block;}body{line-height:1;}ol,ul{list-style:none;}blockquote,q{quotes:none;}blockquote:before,blockquote:after,q:before,q:after{content:'';content:none;}table{border-collapse:collapse;border-spacing:0;}
EOF
echo "Populating reset.css with Reset CSS"

sleep 0.1

cat <<EOF >"$HOME/Desktop/$foldername/style.css"
@import "reset.css";
/* You might want to inline this before release to save a HTTP request */

body {
	
}
EOF
echo "Populating style.css with basic page and @import"

sleep 0.1

cat <<EOF >"$HOME/Desktop/$foldername/index.html"
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>$foldername | Skeleton</title>
	<link rel="stylesheet" href="style.css" type="text/css"/>
	
	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>
<body>
	<header>
		HEADER CONTENT
	</header>
	
	<main>
		BODY OF PAGE CONTENT
	</main>
	
	<!-- ANALYTICS TRACKING CODE -->
</body>
</html>
EOF
echo "Populating index.html with basic HTML5 page"

sleep 0.6


echo -e "\033[0;32mOperation Compete!\033[00m"
echo "=-=-=-=-=-=-=-=-=-=-=-=-="
echo ""
echo "Your new project resides at $HOME/Desktop/$foldername/"
echo ""
echo "This script is still very young. Send bug reports to: @taylorsatula"

sleep 0.5

if [ -d "/Applications/Espresso.app" ]; then
echo "Opening in Espresso..."
open -a /Applications/Espresso.app "$HOME/Desktop/$foldername/"
fi
