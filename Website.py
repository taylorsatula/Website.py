#!/usr/bin/python

## Yes, I realize there are a lot of sleeps in here. It doesn't look fancy if it takes a tenth of a second.
## If you want it to be instant just remove all the lines involving 'time.sleep()' and 'print()'
## Shhh.... don't tell anyone.

## CHECKUP - Script works 12:36A\\11/30/2021
## MAKE SURE THAT A PYTHON VERSION AT/ABOVE 3.9 IS INSTALLED ON SYSTEM

import time                                                     #import the concept of 'time' for sleeps
import os                                                       #import 'os' for mkdir and chdir functions
import shutil

USER_DESKTOP = os.path.expanduser("~/Desktop/")                 #set Desktop w/ path expander (Windows 10 now accepts '\' and '/' equally)

SPECIAL_CHARACTERS = ("""!"#%&'()*+,/:;<=>?[/]^`{|}""")         #Windows disallowed characters as of 07/18/2021  (https://docs.microsoft.com/en-us/openspecs/windows_protocols/ms-wcce/dea20bc9-e6a8-4117-9288-68e67cd8f833)
foldername = input("Please enter a folder name: ")
while any(c in SPECIAL_CHARACTERS for c in foldername):         #test the entered value against each individual disallowed character. If its clean, passthru.
    foldername = input("The OS does /not/ like special characters, try again: ")
else:
    foldername = foldername #passthru


def main():
    print("Generating...")
    time.sleep(0.7)
    progressBar()

    print("=-=-=-=-=-=-=-=-=-=-=-=-=")

    generate_directories()  #generates needed directories and chdir into it
    generate_reset()        #reset.css
    generate_style()        #style.css
    generate_cssComb()      #csscomb.json
    generate_index()        #index.html

    time.sleep(0.5)

    print("\n=-=-=-=-=-=-=-=-=-=-=-=-=")
    print("  ! Operation Compete !")
    print("=-=-=-=-=-=-=-=-=-=-=-=-=\n")
    print(f"Your new project resides at {USER_DESKTOP}${foldername}")
    print()
    time.sleep(5) #at least on Windows the cmd window self closes when the script has completed its tasks
                  # wait(5) lets the user look at the results before it disappears
    #####
    # /end of the main()
    #####


########################
    ####################
########################    functions
    ####################    live down here
########################
    ####################

def progressBar():
    progress = ('')                                             #initial value
    whiteSpace = "                                          "   #initial value/length(42char)
    for line in range(0,21):                                    #lines 0 and 21 are 0% and 100% respectively

        percentComplete = (int(100/20*line))                    #calculate percentage complete
        whiteSpace = whiteSpace.removesuffix('  ')              #every time the loop comes around chop 2 blank characters off rightside end
        progress += "##"                                        #add two '##' to the end of the solid progress bar
        bar = (f"{progress}{whiteSpace}({percentComplete}%)")   #merge the bar, the whitespace, and the percent counter into one

        print(bar, end='\r')                                    #output the assembled bar and add '\r' carriage return so it prints on the same line (DOES NOT HAPPEN IN IDLE CONSOLE)
        time.sleep(0.18) #180ms delay (4s/22 lines)

########################

def generate_reset():
    reset_File = open('reset.css', 'w')                         #openfile reset.css
    reset_File.write("""html,body,div,span,applet,object,iframe,h1,h2,h3,h4,h5,h6,p,blockquote,pre,a,abbr,acronym,address,big,cite,code,del,dfn,em,img,ins,kbd,q,s,samp,small,strike,strong,sub,sup,tt,var,b,u,i,center,dl,dt,dd,ol,ul,li,fieldset,form,label,legend,table,caption,tbody,tfoot,thead,tr,th,td,article,aside,canvas,details,embed,figure,figcaption,footer,header,hgroup,menu,nav,output,ruby,section,summary,time,mark,audio,video{margin:0;padding:0;border:0;font-size:100%;font:inherit;vertical-align:baseline;}article,aside,details,figcaption,figure,footer,header,hgroup,menu,nav,section{display:block;}body{line-height:1;}ol,ul{list-style:none;}blockquote,q{quotes:none;}blockquote:before,blockquote:after,q:before,q:after{content:'';content:none;}table{border-collapse:collapse;border-spacing:0;}""")
    reset_File.close()                                          #closefile reset.css
    time.sleep(0.1)
    print("reset.css generated")

########################

def generate_style():
    style_File = open('style.css', 'w')                         #openfile style.css
    style_File.write("""
@import "reset.css";
/* You might want to inline this before release to save a HTTP request */

body {

}
    """)
    style_File.close()                                          #closefile style.css
    time.sleep(0.1)
    print("style.css generated")

########################

def generate_cssComb():						#copy CSScomb into the project directory
    shutil.copyfile('/home/taylut/.diybash/resources/touchstoneCSScomb', 'csscomb.json')
    print(f"csscomb.json generated")

########################

def generate_index():
    index_File = open('index.html', 'w')                        #openfile index.html
    index_File.write("""
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>$"""+foldername+""" | Skeleton</title>
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
	<script src="" type="text/javascript"></script>
</body><!-- page skeleton generated using @taylorsatula's Website.py script | Grab a copy of it at https://taylorsatula.github.io/Website.py/ -->
</html>
    """)
    index_File.close()                                          #closefile index.html
    time.sleep(0.1)
    print(f"index.html generated in ${foldername} root")

########################

def generate_directories():

    os.mkdir(USER_DESKTOP+'$'+foldername)                       #create project directory on desktop
    print(f'${foldername} created on Desktop')                  # all created project directories have '$' appended onto them

    os.chdir(USER_DESKTOP+'$'+foldername)                       #chdir into newly created directory no matter where Website.py is currently running from
    #print(os.getcwd()) #for development purposes to make
                        #sure I'm working in the right place
    time.sleep(0.1)
    print('populating folder..')

    os.mkdir('images')                                          #create images directory (empty)
    time.sleep(0.1)
    print("/images created")

    os.mkdir('js')                                              #create javascript directory (empty)
    time.sleep(0.1)
    print("/js created")

    ####################
#########################
    ####################  Created by Taylor Satula, 2021
########################  Originally written as a #bash script
    #####################
########################

if __name__ == '__main__':
    main()
