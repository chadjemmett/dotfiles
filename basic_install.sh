


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

brew install pyenv
pyenv intstall 3.8.4
brew install vim
git clone git@github.com:ceejaay/dotifles.git .dotfiles


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

brew install pyenv-virutalenv
brew install postgresql
brew install sqlite
brew install zlib
brew install sdl2
brew install xz
brew install node
brew install yarn

