#!/bin/bash
which -s brew
if [[ $? != 0 ]] ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

    brew update
    brew upgrade

else
    echo "Brew is already here"
    echo "Updating brew..."
    brew update
fi

