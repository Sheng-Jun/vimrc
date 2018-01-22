My vim settings
===============

Modified from https://github.com/fisadev/fisa-vim-config version 8.2

[Installation]
----------------

0) Check if vim is installed

    which vim

If it shows nothing, install vim via

    dnf install vim

    apt-get install vim

    brew install vim

1-1) Check if the vim compiled with python support

    vim --version | grep +python

1-2) Your ~/.vim folder should be empty. If it's not the case, you may would like to rename the old one and keep a backup.

2) Install the requested dependencies (curl, git, Universal Ctags/Exuberant Ctags 5.5)

    dnf install curl git ctags

    apt-get install curl git exuberant-ctags

    brew install --HEAD universal-ctags/universal-ctags/universal-ctags

3) Download the file:

https://raw.githubusercontent.com/Sheng-Jun/vimrc/master/vimrc_clean

Rename it as .vimrc and place it in your home folder.

4) To install the vim-plug and plugins, just run

    vim

Then the installation will automatically start.
After finishing the installation, type :q twice to quit vim.


[Hot keys]
----------------

**NerdTree** F3
**Tagbar** F4
**Rainbow parentheses** F5

