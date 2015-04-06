export PATH="$HOME/.bin:$PATH"
export PATH="$HOME/.app/elixir/bin:$PATH"
export TERM="xterm-256color"
export EDITOR=vim
export RUBYTAOBAO=1

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# alias
alias f='fish'
alias t='tmux'

export NVM_DIR="/home/xavier/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
