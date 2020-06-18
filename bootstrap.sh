#!/bin/bash

echo "We'll now run the bootstrap script."

echo "Creating a sym link to the various files"
#have to make sure we're in the home directory


link () {
    echo "This will link all your files from the home directory to their location"
    ln -sv ~/.dotfiles/runcom/.bash_profile
    ln -sv ~/.dotfiles/runcom/.inputrc
    ln -sv ~/.dotfiles/runcom/.vimrc
}
