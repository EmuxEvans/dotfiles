# oh-my-zsh configuration

export ZSH=/home/xavier/.oh-my-zsh

ZSH_THEME="cloud"

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
export NODE_PATH=`npm -g root`

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
alias iojs='iojs --es_staging'

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

# the fuck
alias fuck='eval $(thefuck $(fc -ln -1))'
