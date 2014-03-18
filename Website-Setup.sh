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
mkdir -p  "$HOME/Desktop/$foldername/images"



sleep 0.1


echo "Images folder created"
mkdir -p  "$HOME/Desktop/$foldername/javascript"


sleep 0.1


echo "Javascript folder created"


sleep 0.1


echo "Populating reset.css with Reset CSS"


sleep 0.1


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


sleep 0.6


echo -e "\033[0;32mOperation Compete!\033[00m"
echo "=-=-=-=-=-=-=-=-=-=-=-=-="
echo ""
echo "Your new project resides at $HOME/Desktop/$foldername/"