#!/bin/bash

echo "We'll now run the bootstrap script."

echo "Creating a sym link to the various files"
#have to make sure we're in the home directory

PROMPT='[bootstrap]'
link () {
    echo "$PROMPT this will create symlinks in your home folder"
    echo "$PROMPT Proceed? (y/n)"
    read resp
    # echo "First arg : $1"
    # echo "Second arg :  $2"

    if [ "$resp" = 'y' -o "$resp" = 'Y' ]
    then
        echo "You pressed yes."
        ln -sv ~/.dotfiles/runcom/.bash_profile
        echo "Linked .bash_profle"
        ln -sv ~/.dotfiles/runcom/.inputrc
        echo "Linked .inputrc"
        ln -sv ~/.dotfiles/runcom/.vimrc
        echo "Linked .vimrc"
        ln -sv ~/.dotfiles/git/.gitconfig
        echo "Linked .gitconfig"
        ln -sv ~/.dotfiles/git/.gitignore_global
        echo "Linked .gitignore_global"

    else
        echo "You pressed N. So we'll shut down"
    fi
    # echo "This will link all your files from the home directory to their location"
    # ln -sv ~/.dotfiles/runcom/.bash_profile
    # ln -sv ~/.dotfiles/runcom/.inputrc
    # ln -sv ~/.dotfiles/runcom/.vimrc
    # ln -sv ~/.dotfiles/git/.gitconfig
}



link
