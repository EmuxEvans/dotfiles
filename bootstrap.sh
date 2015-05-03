#!/usr/bin/env bash

sudo apt-get install ttf-wqy-microhei ttf-wqy-zenhei xfonts-wqy

sudo apt-get install -y im-switch fcitx fcitx-config-gtk2 \
  fcitx-googlepinyin fcitx-frontend-gtk2 fcitx-ui-classic fcitx-ui-light

im-switch -s fcitx

fcitx
