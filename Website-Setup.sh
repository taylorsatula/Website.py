#!/bin/bash
## DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"


echo "Please enter folder name: "
read foldername
echo ""
echo "=-=-=-=-=-=-=-=-=-=-=-=-="
mkdir -p  "$HOME/Desktop/$foldername"
echo "Folder Created"
echo "Populating Folder"
mkdir -p  "$HOME/Desktop/$foldername/images"
echo "Images folder created"
mkdir -p  "$HOME/Desktop/$foldername/javascript"
echo "Javascript folder created"
echo "Populating style.css with Reset CSS"
cat <<EOF >"$HOME/Desktop/$foldername/style.css"
/* @group Reset */
/* http://meyerweb.com/eric/tools/css/reset/ 
   v2.0 | 20110126
   License: none (public domain)
*/

html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}
/* @end */
EOF
echo "Populating index.html with basic HTML5 page"
cat <<EOF >"$HOME/Desktop/$foldername/index.html"
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>$foldername</title>
	<link rel="stylesheet" href="style.css" type="text/css">
	<!--[if lt IE 9]>
	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
</head>
<body>
	
</body>
</html>
EOF
echo -e "\033[0;32mOperation Compete\033[00m"
echo "=-=-=-=-=-=-=-=-=-=-=-=-="
echo ""
echo "Your new project resides at $HOME/Desktop/$foldername/"