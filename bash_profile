# Language settings
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Homebrew settings
export PATH=/usr/local/bin:/usr/local/sbin:${PATH}

# autojump settings
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# fuck settings 
eval "$(thefuck --alias)"
# You can use whatever you want as an alias, like for Mondays:
eval "$(thefuck --alias FUCK)"

# python
alias p="python"
# no .pyc
export PYTHONDONTWRITEBYTECODE=x
# pyenv settings
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# node
alias n="node"
# nvm settings
# export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh
# alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

# ruby
alias r="ruby"
# rbenv settings
export RBENV_ROOT=/usr/local/var/rbenv
eval "$(rbenv init -)"

# GOPATH settings
export GOPATH=/Users/Chen/GoProjects

# mysql alias quick command
alias mysqlstart="sudo /usr/local/Cellar/mysql/5.7.13/bin/mysql.server start && echo 'start MySQL success'"
alias mysqlstop="sudo /usr/local/Cellar/mysql/5.7.13/bin/mysql.server stop  && echo 'stop MySQL success'"
alias mysqlrestart="sudo /usr/local/Cellar/mysql/5.7.13/bin/mysql.server restart && echo 'restart MySQL success'"
alias mysqlreload="sudo /usr/local/Cellar/mysql/5.7.13/bin/mysql.server reload && echo 'reload MySQL success'"
alias mysqlforcereload="sudo /usr/local/Cellar/mysql/5.7.13/bin/mysql.server force-reload  && echo 'force reload MySQL success'"
alias mysqlstatus="sudo /usr/local/Cellar/mysql/5.7.13/bin/mysql.server status && echo 'list MySQL status'"

# PostgreSQL alias quick command
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start && echo 'start PostgreSQL success'"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast && echo 'stop PostgreSQL success'"

# Redis alias quick command
alias redisstart="redis-server && echo 'start Redis success'"
alias rediscli="redis-cli"

# mongoDB settings
export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin
alias mongodbstart="mongod"
alias mongodbcli="mongo"

# display hidden files alias quick command
alias displayhidden="defaults write com.apple.finder AppleShowAllFiles -bool true"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool false"

# alias for quick blog
alias newblog="sh ~/Documents/BreakWire/newblog.sh"
alias publishblog="sh ~/Documents/BreakWire/publishblog.sh"
alias startpelican="make devserver"
alias stoppelican="sh ~/Documents/BreakWire/develop_server.sh stop"

# alias 
alias ls="ls -G"
alias ll="ls -lG"
alias la="ls -aG"
alias lal="ls -alG"
alias grep="grep --color=auto"
alias cls="clear"

# alias cd1 cd2...
alias cd1="cd .."
alias cd2="cd ../.."
alias cd3="cd ../../.."
alias cd4="cd ../../../.."
alias cd5="cd ../../../../.."

# alias mkdir and cd in it
function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# alias lolcat(a Ruby tool) to default cat
alias cat="lolcat"

# alias macvim replace vim
alias vi="mvim"
alias vim="mvim"

# alias auto open file in subl or vim
alias -s html=subl
alias -s js=subl
alias -s py=vi
alias -s rb=vi
alias -s c=vi
alias -s txt=vi
alias -s json=vi

# pip save settings
#export WORKON_HOME=~/.virtualenvs
#[ -f ~/.pipsave_cd ] && source ~/.pipsave_cd # pipsave_line
#[ -f ~/.pipsave_pip ] && source ~/.pipsave_pip # pipsave_line
#[ -f ~/.pipsave_pip3 ] && source ~/.pipsave_pip3 # pipsave_line
#source /usr/local/bin/virtualenvwrapper.sh
