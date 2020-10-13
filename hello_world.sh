#!/bin/bash

# echo "hello world!"

# this is a test to see if you can tell which packages brew has installed.

if brew ls --versions pyenv > /dev/null; then
    echo "The package is installed"
else
    echo "There is no pyenv"
fi
