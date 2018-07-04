export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export CLICOLOR=1
export KPIDATA_SRC=$HOME/code/kpidata
# set where virutal environments will live
export WORKON_HOME=$HOME/.virtualenvs
# ensure all new environments are isolated from the site-packages directory
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS='--no-site-packages'
# use the same directory for virtualenvs as virtualenvwrapper
export PIP_VIRTUALENV_BASE=$WORKON_HOME
# makes pip detect an active virtualenv and install to it
export PIP_RESPECT_VIRTUALENV=true

# source ~/.bash/git-prompt.sh
export GIT_PS1_SHOWCOLORHINTS=true
if [[ -r /usr/local/bin/virtualenvwrapper.sh ]]; then
    source /usr/local/bin/virtualenvwrapper.sh
else
    echo "WARNING: Can't find virtualenvwrapper.sh"
fi
#YELLOW=$(tput setaf 208)
#NORMAL=$(tput sgr0)
#POWDER_BLUE=$(tput setaf 153)

DELIMITER="🍟 "

export PS1="\u${DELIMITER}\w: "
if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
export PYENV_ROOT=/usr/local/var/pyenv

# aliases
alias drac='docker rm $(docker ps -a -q)'
alias drui='docker rmi -f $(docker images | grep '"'"'^<none>'"'"' | awk '"'"'{ print $3 }'"'"')'
alias dsrc='docker stop $(docker ps -a -q)'
alias gpom='git checkout master && git pull origin master'
alias vus='vagrant up && vagrant ssh'
alias vgr='vagrant global-status | grep running'
alias ll='ls -l'
alias la='ls -lha'
alias dms='docker-machine start default'
alias dme='eval $(docker-machine env default)'
alias gsha='git rev-parse --short HEAD'
alias history='history | tail -n 30'
alias clp='xclip -selection clipboard'
alias tb='nc termbin.com 9999'
alias tbc='nc termbin.com 9999 | xclip -selection clipboard'
alias findf='find 2>/dev/null / -name'

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
