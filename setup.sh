#!/bin/sh
# richardso21's dotfile config script
# WARNING: USE THIS ONLY AFTER INSTALLING ALL PREREQUISITES
# I DON'T HAVE TIME TO MAKE A SCRIPT THAT COVERS ALL PACKAGE MANAGERS

## making directories
mkdir ~/.config
mkdir ~/.config/i3
mkdir ~/.config/dunst
mkdir ~/.config/picom
mkdir ~/.config/rofi

## copying over configs
# i3
ln -s ./i3/i3config ~/.config/i3/config
ln -s ./i3/i3status.conf ~/.config/i3/i3status.conf
ln -s ./i3/i3status_bottom.conf ~/.config/i3/i3status_bottom.conf
# picom, dunst, rofi
ln -s ./picom.conf ~/.config/picom/picom.conf
ln -s ./dunstrc ~/.config/dunst/dunstrc
ln -s ./rofi ~/.config/rofi/rofi
# home dotfiles
ln -s ./.zshrc ~/.zshrc
ln -s ./.xinitrc ~/.xinitrc
ln -s ./.alacritty.yml ~/.alacritty.yml
ln -s ./.vimrc ~/.vimrc

