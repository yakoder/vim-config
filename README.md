# vim-config
My vim config files

Edit setup\createlinks.bat to define locations of:
* CYGWINPATH - the path to where you installed Cygwin
* VIMCONFIG  - the path to where this repo is located
* VIMINSTALL - the path to where you installed Vim
    + NOTE: this is _not_ the location of the binaries (e.g., Vim not Vim\vim81)
Run setup\createlinks.bat from a Windows Command Prompt to create the necessary links.
* NOTE:  Whereas this creates links to the "viminfo" file, the way vim writes that file upon save destroys the link. The link is created initially to allow saving some of the changes, and (if manually committed) have more recent versions on other machines.
