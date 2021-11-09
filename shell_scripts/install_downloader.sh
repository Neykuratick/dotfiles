#!/bin/bash

# installing minimal requirements
# alacritty - terminal
# gst-plugins-good, gst-libav - to make browser elagible to watch videos and not crash
# alsa-utils - make audio working
# bc - to make brightness.sh work as it uses this cli app (math)
# xdg-utils -sets up browser by default
# nss - some basic libraries chromium doesn't work without
# xwallpaper - sets wallpaper
sudo pacman -S --noconfirm qtile zsh zsh-syntax-highlighting ttf-ms-fonts xorg-xrandr alacritty gst-plugins-good gst-libav pulseaudio alsa-utils bc xdg-utils nss xwallpaper zip unzip
