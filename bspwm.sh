#!/bin/bash
sudo pacman -Syu --needed git base-devel
git clone https://aur.archlinux.org/paru-bin.git
cd paru-bin && makepkg -si
yay -S bspwm sxhkd feh polybar xorg-xsetroot picom-jonaburg-git dunst rofi flameshot xfce4-power-manager ksuperkey adobe-source-code-pro-fonts nerd-fonts-jetbrains-mono ttf-iosevka-nerd polkit-gnome i3lock-color fortune-mod network-manager-applet zsh zsh-autosuggestions zsh-syntax-highlighting oh-my-zsh-git catppuccin-gtk-theme papirus-icon-theme --needed --noconfirm
git clone https://github.com/nazeofel/BSPWM-FILES.git --depth 1
cd BSPWM-FILES
cp -R .config/* ~/.config/
chmod -R +x ~/.config/bspwm
cp .zshrc ~
cp .zshrc-personal ~
chmod -R +x scripts
sudo cp -R scripts/* /usr/local/bin
