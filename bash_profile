# Homebrew settings
export PATH=/usr/local/bin:/usr/local/sbin:${PATH}

# coreutils
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

# python
alias p="python"

# virtualenvwrapper settings
export WORKON_HOME=/Users/Chen/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh


# pyenv settings
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# GOPATH setting
export GOPATH=/Users/Chen/GO

# mongodb settings
export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin

# cabal settings
export PATH=$HOME/.cabal/bin:$PATH

# fuck settings 
alias fuck='$(thefuck $(fc -ln -1))'
# You can use whatever you want as an alias, like for mondays:
alias FUCK='fuck'

# mysql alias quick command
alias mysqlstart="sudo /usr/local/Cellar/mysql/5.6.25/bin/mysql.server start"
alias mysqlstop="sudo /usr/local/Cellar/mysql/5.6.25/bin/mysql.server stop"
alias mysqlrestart="sduo /usr/local/Cellar/mysql/5.6.25/bin/mysql.server
restart"

# redis alias quick command
alias redisser="redis-server"
alias rediscli="redis-cli"
alias redisshut="redis-cli shutdown"

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
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# alias macvim replace vim
alias vi="mvim"
alias vim="mvim"

# alias Linode Tokyo VPS quick connect
alias ctrl="ssh linode"




