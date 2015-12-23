# autojump settings
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# coreutils settings
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# Homebrew settings
export PATH=/usr/local/bin:/usr/local/sbin:${PATH}

# python
alias py="python"

# virtualenvwrapper settings
export WORKON_HOME=/Users/Chen/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# pyenv settings
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# GOPATH setting
export PATH=$PATH:$GOPATH/bin

# nvm settings
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

# cabal settings
export PATH=$HOME/.cabal/bin:$PATH

# fuck settings 
eval "$(thefuck --alias)"
# You can use whatever you want as an alias, like for Mondays:
eval "$(thefuck --alias FUCK)"

# mysql alias quick command
alias mysqlstart="sudo /usr/local/Cellar/mysql/5.7.10/bin/mysql.server start"
alias mysqlstop="sudo /usr/local/Cellar/mysql/5.7.10/bin/mysql.server stop"
alias mysqlrestart="sduo /usr/local/Cellar/mysql/5.7.10/bin/mysql.server
restart"
alias myreload="sudo /usr/local/Cellar/mysql/5.7.10/bin/mysql.server reload"
alias myfreload="sudo /usr/local/Cellar/mysql/5.7.10/bin/mysql.server force-reload"
alias mystatus="sudo /usr/local/Cellar/mysql/5.7.10/bin/mysql.server status"

# postgresql alias quick command
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

# redis alias quick command
alias redisstart="redis-server"
alias rediscli="redis-cli"
alias redisstop="redis-cli shutdown"

# mongodb settings
export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin

# display hidden files alias quick command
alias displayhidden="defaults write com.apple.finder AppleShowAllFiles -bool true"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool false"


# alias colorful
alias ls="ls -G"
alias ll="ls -lG" 
alias lal="ls -alG"
alias grep="grep --color=auto"

# alias clear cls
alias cls="clear"

# alias cd1 cd2...
alias cd1="cd .."
alias cd2="cd ../.."
alias cd3="cd ../../.."
alias cd4="cd ../../../.."
alias cd5="cd ../../../../.."

# alias mkdircd
function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# alias macvim replace vim
alias vi="mvim"
alias vim="mvim"

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
