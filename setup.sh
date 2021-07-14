#!/bin/sh

if [ ! -d ~/.config ]
then
  mkdir ~/.config
fi

ln -sf ~/.dotfiles/git ~/.config/git
read -p "Enter name for git: " name
read -p "Enter email for git: " email
echo "[user]" > ~/.config/git/user.inc
echo -e "\tname = $name" >> ~/.config/git/user.inc
echo -e "\temail = $email" >> ~/.config/git/user.inc

ln -sf ~/.dotfiles/paru ~/.config/paru
