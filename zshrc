export ZSH=/home/xavier/.oh-my-zsh

ZSH_THEME="cloud"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git z extract git-extras)

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
alias t='tmux'
alias rm="trash-put"
alias mux="tmuxinator"
alias cc="clang-3.5"
alias cf="coffee"
alias cfc="coffee -c"
alias py3="python3"
alias sl="ls"
alias ai='sudo apt-get install'

# Setup zsh-autosuggestions
source /home/xavier/.zsh-autosuggestions/autosuggestions.zsh

# Enable autosuggestions automatically
zle-line-init() {
    zle autosuggest-start
}

zle -N zle-line-init

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^T' autosuggest-toggle
