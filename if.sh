#!/bin/bash

echo "Please enter folder name: "
read foldername
echo ""

PS3='Please enter your choice: '
options=("HTML/CSS" "HTML/SCSS" "HAML/CSS" "HAML/SCSS")
select opt in "${options[@]}"
do
    case $opt in
        "HTML/CSS")
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
            cat <<EOF >"$HOME/Desktop/$foldername/style.css"
            
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
            ;;
        "HTML/SCSS")
            echo "=-=-=-=-=-=-=-=-=-=-=-=-="
            ;;
        "HAML/CSS")
            echo "you chose choice 3"
            ;;
        "HAML/SCSS")
            echo "you chose choice 3"
            ;;
        "Quit")
            break
            ;;
        *) echo invalid option;;
    esac
done