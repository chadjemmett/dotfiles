export PATH=/usr/local/opt/python/libexec/bin:$PATH
# the following lines are for virtualenvwrapper.
# uncomment these if you go back to virutualenv and virtualenv wrapper.
# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Devel
# source /usr/local/bin/virtualenvwrapper.sh

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
alias l="ls"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
