#!/usr/bin/env bash

# install databases
echo "Installing sqlite3..."
  sudo apt-get install -y libsqlite3-dev sqlite3

echo "Installing MySQL..."
  sudo apt-get install -y mysql-server

# install common tools
echo "Installing clang 3.5..."
  sudo apt-get install -y clang-3.5

echo "Installing tmux..."
  sudo apt-get install -y tmux

echo "Installing ImageMagick..."
  sudo apt-get install -y imagemagick

echo "Installing curl..."
  sudo apt-get install -y curl

echo "Installing The Silver Searcher..."
  sudo apt-get install -y silversearcher-ag

echo "Installing rar..."
  sudo apt-get install -y rar

echo "Installing tree..."
  sudo apt-get install -y tree

echo "Installing git..."
  sudo apt-get install -y git

echo "Installing tig..."
  sudo apt-get install -y tig

echo "Installing trash-cli..."
  sudo apt-get install -y trash-cli

# install GUI Apps
if ! command -v fcitx >/dev/null; then
  echo "installing fcitx, a chinese input method..."
    sudo apt-get install -y im-switch fcitx fcitx-config-gtk2 \
      fcitx-googlepinyin fcitx-frontend-gtk2 fcitx-ui-classic fcitx-ui-light
    im-switch -s fcitx
    fcitx
fi

echo "installing redshift-gtk..."
  sudo apt-get install redshift-gtk
