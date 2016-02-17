# oh-my-zsh configuration

export ZSH=/home/xavier/.oh-my-zsh

ZSH_THEME="cloud"

plugins=(git z git-extras lein dirhistory httpie web-search add-license gac)

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
alias tm='tmux'
alias gist='gist -o'
alias hs='hs -o'
alias gaac='git add --all && git commit -v'
alias rt='trash'
alias rkt='racket'

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

# export HTTPS_PROXY=127.0.0.1:1080

# added by travis gem
[ -f /home/xavier/.travis/travis.sh ] && source /home/xavier/.travis/travis.sh
