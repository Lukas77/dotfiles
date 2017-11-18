export PATH=/usr/local/bin:$PATH

export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
source /usr/local/bin/virtualenvwrapper.sh

export LC_ALL="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"
export LANG="en_US.UTF-8"

export GOROOT=/usr/local/opt/go
export GOPATH=$HOME/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin

alias ls="ls -G"
alias l="ls -a"
alias ll="l -l"
alias ct='ctags -R --exclude=@.ctagsignore .'

# Define some colors first:
black='\e[0;30m'
BLACK='\e[1;30m'
red='\e[0;31m'
RED='\e[1;31m'
green='\e[0;32m'
GREEN='\e[1;32m'
yellow='\e[0;33m'
YELLOW='\e[1;33m'
blue='\e[0;34m'
BLUE='\e[1;34m'
purple='\e[0;35m'
PURPLE='\e[1;35m'
cyan='\e[0;36m'
CYAN='\e[1;36m'
white='\e[0;37m'
WHITE='\e[1;37m'

unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
NC='\e[0m'    # Text Reset

__git_branch() {
    b=`git symbolic-ref HEAD 2>/dev/null | sed 's%.*/\(.*\)%\1%'`
    [ -z "$b" ] && echo "" || echo " $b"
}

# export PS1="\e[0;34m\]\u@mac \e[1;31m\]\w $ \[\e[0m\]"  
export PS1="\[$blue\]\u\[$BLUE\]@mac\[$cyan\]\$(__git_branch) \[$RED\]\w\[$NC\]\[$RED\] \$ \[$NC\]"

set -o vi
