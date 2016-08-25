# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#  Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerline"
POWERLINE_HIDE_HOST_NAME="true"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

#  Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

#  Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

#  Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

#  Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

#  Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

#  Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# U ncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

#  Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="yyyy/mm/dd"

# Wou ld you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Wh ich plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(autojump autopep8 brew brew-cask django git git-extras git-flow git-prompt github gitignore history heroku httpie iwhois marked2 nmap npm node osx pep8 pip pod postgres python pylint redis-cli rsync sublime sudo supervisor thefuck tmux terminalapp vundle vi-mode xcode zsh_reload)
# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='mvim'
fi

#  Compilation flags
# export ARCHFLAGS="-arch x86_64"

#  ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

#  Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

# zsh-completion
fpath=(/usr/local/share/zsh-completions $fpath)

# zsh-syntax-highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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
alias p2="python2"
alias p3="python3"
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

# PostgreSQL alias quick command
alias pgstart="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias pcli="pgcli"

# mysql alias quick command
alias mysqlstart="sudo /usr/local/Cellar/mysql/5.7.14/bin/mysql.server start"
alias mysqlstop="sudo /usr/local/Cellar/mysql/5.7.14/bin/mysql.server stop"
alias mysqlrestart="sudo /usr/local/Cellar/mysql/5.7.14/bin/mysql.server restart"
alias mysqlreload="sudo /usr/local/Cellar/mysql/5.7.14/bin/mysql.server reload"
alias mysqlforcereload="sudo /usr/local/Cellar/mysql/5.7.14/bin/mysql.server force-reload"
alias mysqlstatus="sudo /usr/local/Cellar/mysql/5.7.14/bin/mysql.server status"
alias mcli="mycli"

# Redis alias quick command
alias redisstart="redis-server"
alias rediscli="redis-cli"

# MongoDB settings
export MONGO_PATH=/usr/local/mongodb
export PATH=$PATH:$MONGO_PATH/bin
alias mongodbstart="mongod"
alias mongodbcli="mongo"
alias adminmongo="cd ~/tools/adminMongo && npm start"

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

# pip save settings
#export WORKON_HOME=~/.virtualenvs
#[ -f ~/.pipsave_cd ] && source ~/.pipsave_cd # pipsave_line
#[ -f ~/.pipsave_pip ] && source ~/.pipsave_pip # pipsave_line
#[ -f ~/.pipsave_pip3 ] && source ~/.pipsave_pip3 # pipsave_line
#source /usr/local/bin/virtualenvwrapper.sh
