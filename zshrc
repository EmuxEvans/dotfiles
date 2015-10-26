# oh-my-zsh configuration

export ZSH=/home/xavier/.oh-my-zsh

ZSH_THEME="cloud"

plugins=(git z git-extras lein)

# User configuration

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.bin:$PATH"
export TERM="xterm-256color"
export EDITOR=vim

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# nvm
export NVM_DIR="/home/xavier/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# alias
alias t='tmux'
alias rm="trash-put"
alias cc="clang-3.6"
alias py3="python3"
alias sl="ls"

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

[[ -s "/home/xavier/.gvm/scripts/gvm" ]] && source "/home/xavier/.gvm/scripts/gvm"

# export HTTPS_PROXY=127.0.0.1:1080
