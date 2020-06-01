export PATH=/usr/local/opt/python/libexec/bin:$PATH
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh

parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
# export LSCOLORS="EHfxcxdxBxegecabagacad" 

# alias ls='ls -lGH'        <-----This shows in list format, follow symlinks colorized

alias ic="cd ~/Library/Mobile\ Documents/com~apple~CloudDocs"
alias gs="git status"
alias gp="git push"
alias sm="./manage.py showmigrations --settings=wehcopromo.settings_local"
alias promo_server="./manage.py runserver_plus --settings=wehcopromo.settings_local"

