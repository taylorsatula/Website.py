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
echo "Populating reset.css with Reset CSS"
cat <<EOF >"$HOME/Desktop/$foldername/reset.css"

## CSS RESET DOCUMENT SHOULD GO HERE BEFORE A RELEASE PUSH
## I JUST REMOVED IT SO IT WOULD BE EASIER TO WORK WITH
## SINCE I CANNOT DO CODE FOLDING IN SHELL SCRIPTS

EOF
echo "Populating style.css with basic page and @import"
cat <<EOF >"$HOME/Desktop/$foldername/reset.css"

## CSS PAGE DOCUMENT SHOULD GO HERE BEFORE A RELEASE PUSH
## I JUST REMOVED IT SO IT WOULD BE EASIER TO WORK WITH
## SINCE I CANNOT DO CODE FOLDING IN SHELL SCRIPTS

EOF
echo "Populating index.html with basic HTML5 page"
cat <<EOF >"$HOME/Desktop/$foldername/index.html"

## INDEX HTML DOCUMENT SHOULD GO HERE BEFORE A RELEASE PUSH
## I JUST REMOVED IT SO IT WOULD BE EASIER TO WORK WITH
## SINCE I CANNOT DO CODE FOLDING IN SHELL SCRIPTS

EOF
echo -e "\033[0;32mOperation Compete\033[00m"
echo "=-=-=-=-=-=-=-=-=-=-=-=-="
echo ""
echo "Your new project resides at $HOME/Desktop/$foldername/"