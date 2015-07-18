# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerline"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="yyyy/mm/dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(osx autojump rake gem bundler ruby rbenv rails sublime autopep8 brew brew-cask cabal django fabric git git-flow git-extras github gitignore go golang grunt heroku history httpie marked2 node npm pep8 pip postgres pod pyenv pylint python redis-cli rsync supervisor tmux vundle xcode gnu-utils virtualenv virtualenvwrapper vundle)

# User configuration
export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#



# zsh-completion
fpath=(/usr/local/share/zsh-completions $fpath)

# Homebrew settings
export PATH=/usr/local/bin:/usr/local/sbin:${PATH}

# coreutils settings
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
alias mysqlrestart="sudo /usr/local/Cellar/mysql/5.6.25/bin/mysql.server restart"

# redis alias quick command
alias redisser="redis-server"
alias rediscli="redis-cli"
alias redisshut="redis-cli shutdown"

# display hidden files alias quick command
alias displayhidden="defaults write com.apple.finder AppleShowAllFiles -bool true"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool false"

# alias ls colorful
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

# temp rake alias for octopress
alias rake="noglob rake"

# alias Linode Tokyo VPS quick connect
alias ctrl="ssh linode"




