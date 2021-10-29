#!/bin/sh  

#exec sudo chsh -s $(which zsh) &
exec cp -r .config/htop ~/.config/ &
cp -r .config/qtile ~/.config/ &
cp shell_scripts/xlayout.sh ~ &
cp shell_scripts/kblayout.sh ~ &
cp shell_scripts/brightness.sh ~ &
cp shell_scripts/fixf.sh ~ &
cp shell_scripts/logout.sh ~ &
cp .vimrc ~ &
cp .xinitrc ~ &
cp .zshrc ~ 
