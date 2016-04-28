# oh-my-zsh configuration

export ZSH=/Users/weidian123/.oh-my-zsh

ZSH_THEME="cloud"

plugins=(zsh-autosuggestions z git git-extras lein dirhistory httpie)

# User configuration

source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.bin:$PATH"
export EDITOR=vim

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# nvm
export NVM_DIR="/Users/weidian123/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# alias
alias tm='tmux'
alias gist='gist -o'
alias hs='hs -o'
alias aria='aria2c -x10'
alias gac='git add --all && git commit -v'
alias rt='trash'
alias rkt='racket'

# use ctrl+t to toggle autosuggestions(hopefully this wont be needed as
# zsh-autosuggestions is designed to be unobtrusive)
bindkey '^T' autosuggest-toggle

# added by travis gem
[ -f /Users/weidian123/.travis/travis.sh ] && source /Users/weidian123/.travis/travis.sh

www=/Users/weidian123/Documents/workspace/
export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.ustc.edu.cn/homebrew-bottles

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias math='/Applications/Mathematica.app/Contents/MacOS/MathKernel'
