#!/usr/bin/env bash

# add PPA and update
fancy_echo "add ppa for java..."
  sudo add-apt-repository -y ppa:webupd8team/java

fancy_echo "add ppa for ghc and cabal..."
  sudo add-apt-repository -y ppa:hvr/ghc

fancy_echo "Updating system packages..."
  sudo apt-get update


# install languages
fancy_echo "install java..."
  sudo apt-get install -y oracle-java7-installer

fancy_echo "installer cabal, build system for Haskell..."
  sudo apt-get install -y cabal-install-1.20

fancy_echo "installer ghc, the Haskell compiler..."
  sudo apt-get install -y ghc-7.8.3


# install GUI Apps
if ! command -v fcitx >/dev/null; then
  fancy_echo "installing fcitx, a chinese input method..."
    sudo apt-get install -y im-switch fcitx fcitx-config-gtk2 \
      fcitx-googlepinyin fcitx-frontend-gtk2 fcitx-ui-classic fcitx-ui-light
    im-switch -s fcitx
    fcitx
fi


fancy_echo "installing Sublime text 3, an awesome text editor..."
	sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
	sudo apt-get update
	sudo apt-get install -y sublime-text-installer

if [[ ! -d "$HOME/.config/sublime-text-3" ]]; then
  fancy_echo "restore Sublime settings..."
    cd ~/.config
    ln -s ~/Dropbox/dotfiles/sublime-text-3
fi
