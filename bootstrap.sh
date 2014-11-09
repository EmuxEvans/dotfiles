#!/usr/bin/env bash

fancy_echo() {
  printf "\n%b\n" "$1"
}

mkdir -p ~/.log

# add PPA and update
fancy_echo "add ppa for the latest fish shell..."
  sudo apt-add-repository -y ppa:fish-shell/release-2

fancy_echo "add ppa for node.js..."
  curl -sL https://deb.nodesource.com/setup | sudo bash -

fancy_echo "Updating system packages..."
  sudo apt-get update
  sudo apt-get upgrade


# install common dependencies
fancy_echo "Installing base ruby build dependencies..."
  sudo apt-get build-dep -y ruby1.9.3

fancy_echo "Installing libraries for common gem dependencies..."
  sudo apt-get install -y libxslt1-dev libcurl4-openssl-dev \
    libksba8 libksba-dev libqtwebkit-dev libreadline-dev build-essential


# install source control tools
fancy_echo "Installing git..."
  sudo apt-get install -y git

fancy_echo "Installing tig..."
  sudo apt-get install -y tig


# install databases
fancy_echo "Installing sqlite3..."
  sudo apt-get install -y libsqlite3-dev sqlite3

fancy_echo "Installing MySQL..."
  sudo apt-get install -y mysql-server


# install common tools
fancy_echo "Installing tmux..."
  sudo apt-get install -y tmux

fancy_echo "Installing ImageMagick..."
  sudo apt-get install -y imagemagick

fancy_echo "Installing watch..."
  sudo apt-get install -y watch

fancy_echo "Installing curl..."
  sudo apt-get install -y curl

fancy_echo "Installing The Silver Searcher..."
  sudo apt-get install -y silversearcher-ag

fancy_echo "Installing rar..."
  sudo apt-get install -y rar

fancy_echo "Installing tree..."
  sudo apt-get install -y tree

fancy_echo "Installing aria2..."
  sudo apt-get install -y aria2

fancy_echo "Installing Heroku CLI client..."
  wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh


# install shells
fancy_echo "Installing zsh shell..."
  sudo apt-get install -y zsh

fancy_echo "Installing fish shell..."
  sudo apt-get install -y fish


# configuration
if ! command -v lsrc >/dev/null; then
  fancy_echo "Installing rcm, to manage your dotfiles..."
    wget -O /tmp/rcm_1.1.0_all.deb http://mike-burns.com/project/rcm/rcm_1.1.0_all.deb
    sudo dpkg -i /tmp/rcm_1.1.0_all.deb
    rm -f /tmp/rcm_1.1.0_all.deb
fi

if [[ ! -d "$HOME/.oh-my-fish" ]]; then
  fancy_echo "use oh-my-fish..."
    git clone git://github.com/bpinto/oh-my-fish.git ~/.oh-my-fish
fi

if [[ ! -d "$HOME/.dotfiles" ]]; then
  fancy_echo "restore dotfiles..."
    git clone git@github.com:dd1994/dotfiles.git ~/.dotfiles
    rcup
fi

if [[ ! -d "$HOME/.ssh" ]]; then
  fancy_echo "restore ~/.ssh..."
    cd
    ln -s ~/Dropbox/dotfiles/.ssh
fi

# install languages
fancy_echo "Installing node.js..."
  sudo apt-get install -y nodejs

if [[ ! -d "$HOME/.rbenv" ]]; then
  fancy_echo "Installing rbenv, to change Ruby versions..."
    git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init - zsh)"
fi

if [[ ! -d "$HOME/.rbenv/plugins/ruby-build" ]]; then
  fancy_echo "Installing ruby-build, to install Rubies..."
    git clone https://github.com/sstephenson/ruby-build.git \
      ~/.rbenv/plugins/ruby-build
fi

if [[ ! -d "$HOME/.rbenv/plugins/rbenv-gem-rehash" ]]; then
  fancy_echo "Installing rbenv-gem-rehash..."
    git clone https://github.com/sstephenson/rbenv-gem-rehash.git \
      ~/.rbenv/plugins/rbenv-gem-rehash
fi


if [[ "$SHELL" != */zsh ]]; then
  fancy_echo "Changing your shell to zsh ..."
    chsh -s $(which zsh)
fi


fancy_echo "Installing ruby 2.0.0 and 2.14..."
  wget -NO ~/.rbenv/cache/ruby-2.1.4.tar.gz \
    https://ruby.taobao.org/mirrors/ruby/ruby-2.1.4.tar.gz
  wget -NO ~/.rbenv/cache/ruby-2.0.0-p594.tar.gz \
    https://ruby.taobao.org/mirrors/ruby/ruby-2.0.0-p594.tar.gz
  rbenv install 2.0.0-p594
  rbenv install 2.1.4
  rbenv global 2.1.4
  rbenv rehash


# install Ruby gems
fancy_echo "Updating to latest Rubygems version..."
  gem update --system

if ! command -v bundler >/dev/null; then
  fancy_echo "Installing Bundler..."
    gem install bundler
fi


# Installs node programs
if ! command -v fanyi >/dev/null; then
  fancy_echo "install fanyi..."
    sudo npm install -g fanyi
fi


# install fonts
fancy_echo "Installing chinese fonts wenquanyi..."
  sudo apt-get install -y ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy

fancy_echo "install source code pro..."
  mkdir -p /tmp/adodefont
  cd /tmp/adodefont
  wget -N http://downloads.sourceforge.net/project/sourcecodepro.adobe/SourceCodePro_FontsOnly-1.017.zip
  unzip -o SourceCodePro_FontsOnly-1.017.zip
  mkdir -p ~/.fonts
  cp -n SourceCodePro_FontsOnly-1.017/OTF/*.otf ~/.fonts
  rm -rf /tmp/adodefont
  fc-cache -f -v


# personal stuff
if [[ ! -d "$HOME/.bin" ]]; then
  fancy_echo "fetching my personal scripts..."
    git clone git@github.com:dd1994/bin.git ~/.bin
fi

fancy_echo "Installing your personal additions from ~/.bootstrap.local.sh..."
  if [[ -f ~/.bootstrap.local.sh ]]; then
    source ~/.bootstrap.local.sh
  fi
