# Language settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Homebrew settings
export PATH=/usr/local/bin:/usr/local/sbin:${PATH}

# python
alias p="python"
# no .pyc
export PYTHONDONTWRITEBYTECODE=x
# virtualenvwrapper settings
export WORKON_HOME=/Users/Chen/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# node
alias n="node"
# nvm settings
export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh
#alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

# GOPATH setting
export PATH=$PATH:$GOPATH/bin

# fuck settings 
eval "$(thefuck --alias)"
# You can use whatever you want as an alias, like for Mondays:
eval "$(thefuck --alias FUCK)"

# mysql alias quick command
alias mysqlstart="sudo /usr/local/Cellar/mysql/5.7.13/bin/mysql.server start"
alias mysqlstop="sudo /usr/local/Cellar/mysql/5.7.13/bin/mysql.server stop"
alias mysqlrestart="sduo /usr/local/Cellar/mysql/5.7.13/bin/mysql.server
restart"
alias myreload="sudo /usr/local/Cellar/mysql/5.7.13/bin/mysql.server reload"
alias myfreload="sudo /usr/local/Cellar/mysql/5.7.13/bin/mysql.server force-reload"
alias mystatus="sudo /usr/local/Cellar/mysql/5.7.13/bin/mysql.server status"

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

# alias 
alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -aG"
alias lal="ls -alG"
alias grep="grep --color=auto"
alias cls="clear"

# alias lolcat(a Ruby tool) to default cat
alias cat="lolcat"

# alias auto open file in subl or vim
alias -s html=subl
alias -s js=subl
alias -s py=vi
alias -s rb=vi
alias -s c=vi
alias -s txt=vi
alias -s json=vi


# alias cd1 cd2...
alias cd1="cd .."
alias cd2="cd ../.."
alias cd3="cd ../../.."
alias cd4="cd ../../../.."
alias cd5="cd ../../../../.."

# alias mkdir and cd in it
function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# alias macvim replace vim
alias vi="mvim"
alias vim="mvim"

# alias for quick blog
alias newblog="sh ~/Documents/BreakWire/newblog.sh"
alias publishblog="sh ~/Documents/BreakWire/publishblog.sh"

# item2 shell integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
