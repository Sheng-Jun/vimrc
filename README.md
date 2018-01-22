My vim settings
===============

Modified from https://github.com/fisadev/fisa-vim-config version 8.2

[Installation]
----------------

1) Check if vim is installed

        which vim

If it shows nothing, install vim via

    dnf install vim
    apt-get install vim
    brew install vim

2) Check if the vim compiled with python support

        vim --version | grep +python

3) Your ~/.vim folder should be empty. If it's not the case, you may would like to rename the old one and keep a backup.

4) Install the requested dependencies (curl, git, Universal Ctags/Exuberant Ctags 5.5)

        dnf install curl git ctags
        apt-get install curl git exuberant-ctags
        brew install --HEAD universal-ctags/universal-ctags/universal-ctags

5) Download the file:

https://raw.githubusercontent.com/Sheng-Jun/vimrc/master/vimrc_clean

Rename it as .vimrc and place it in your home folder.

6) To install the vim-plug and plugins, just run

        vim

Then the installation will automatically start.
After finishing the installation, type :q twice to quit two-panel vim.


[Hot keys]
----------------

**scrooloose/nerdcommenter**

\ + cc Comment out the current line or text selected in visual mode.

\ + cu Uncomments the selected line(s).

\ + cy Copy the selected line(s) first then execute \ + cc 

**scrooloose/nerdtree** F3

**majutsushi/tagbar** F4

**luochen1990/rainbow** F5

[Powerline]
--------------

At the end of vim_clean, Some lines which have been commented out is related to Powerline.

You need to install Powerline before you uncomment these lines.

Please refer to

https://powerline.readthedocs.io/en/latest/installation/linux.html

https://powerline.readthedocs.io/en/latest/installation/osx.html


