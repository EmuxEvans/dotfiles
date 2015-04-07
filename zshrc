export ZSH=/home/xavier/.oh-my-zsh

ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git z)

# User configuration

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.app/elixir/bin:$PATH"
export TERM="xterm-256color"
export EDITOR=vim
export RUBYTAOBAO=1

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# nvm
export NVM_DIR="/home/xavier/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# alias
alias f='fish'
alias t='tmux'
