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
plugins=(autojump autopep8 brew django git git-flow git-prompt github gitignore history httpie iwhois marked2 nmap npm node osx pep8 pip pod postgres python pylint pyenv redis-cli rsync sublime sudo supervisor thefuck tmux terminalapp vundle vi-mode xcode zsh_reload yarn)
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

# thefuck settings
eval "$(thefuck --alias)"

# python
alias p="python"
alias notebook="jupyter notebook --ip 0.0.0.0"
# no .pyc
export PYTHONDONTWRITEBYTECODE=x
# pyenv settings
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# node
alias n="node"
# alias for cnpm
alias cnpm="npm --registry=https://registry.npm.taobao.org \
  --cache=$HOME/.npm/.cache/cnpm \
  --disturl=https://npm.taobao.org/dist \
  --userconfig=$HOME/.cnpmrc"

# GOPATH settings
export GOPATH=/usr/local/lib/go

# PostgreSQL alias quick command
alias pgstart="pg_ctl -D /usr/local/var/postgres start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop"

# MySQL alias quick command
alias mystart="mysql.server start"
alias mystop="mysql.server stop"

# Redis alias quick command
alias redisstart="redis-server"
alias redisstop="redis-cli shutdown"
alias rediscli="redis-cli"

# display hidden files alias quick command
alias displayhidden="defaults write com.apple.finder AppleShowAllFiles -bool true"
alias hidehidden="defaults write com.apple.finder AppleShowAllFiles -bool false"

# alias for quick blog
alias newblog="cd ~/Documents/BreakWire; sh newblog.sh"
alias publishblog="cd ~/Documents/BreakWire; sh publishblog.sh"
alias startpelican="make devserver"
alias stoppelican="make stopserver"

# alias for quick work site update
alias publishsite="cd ~/Documents/breakwire_xyz; sh publish.sh"

# alias for mkdocs
alias mkdocsserve="mkdocs serve -a 0.0.0.0:8001"

# alias
alias l="ls -G"
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

# alias mkdir and cd in it
function mkcd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# alias lolcat(a Ruby tool) to default cat
alias cat="lolcat"

# alias macvim replace vim
alias vi="mvim"
alias vim="mvim"

# yarn
export PATH="~/.yarn/bin:$PATH"

# alias for git-blame-someone-else
alias git-blame-else="/usr/local/bin/git-blame-someone-else"

export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home"
export PATH=$JAVA_HOME/bin:$PATH

