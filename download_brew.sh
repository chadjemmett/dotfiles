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


Programs=(moon-buggy postgresql pyenv nethack)

for i in "${Programs[@]}"; do
    if brew ls --versions $i > /dev/null; then
        echo "Already downloaded" $i
    else
        echo "Downloading: " $i
        brew install $i
    fi
done



# for i in Programs; do
