New Project Template
=============

Setting up new projects sucks. This helps.

When this script is run it creates a folder in the same directory that the script is in and populates it with
```foldername/
foldername/images/
foldername/javascript/
foldername/index.html
foldername/style.css
foldername/reset.css
```
By default these are filled with a basic HTML5 page and Eric Meyer's CSS reset.
The CSS document is even linked to the HTML document automatically.

Before running for the first time you may have to make the script executable by running the
```
	chmod u+x Website-Setup.py
```
and then add it into your ~/bin if you're on linux/macOS
```
source ~/.profile
```
to update your user profile so the system knows what it is looking for.

You can also call the script by double clicking the python file itself. It will run and then self-close.
