#!/bin/bash

BASEDIR="$(cd "$(dirname "$0")" && pwd)"

# bin
for f in $(ls $BASEDIR/bin)
do
    ln -snf $BASEDIR/bin/$f $HOME/bin
done

# Hyprland (Prism theme)
ln -snf ${BASEDIR}/hypr $HOME/.config/hypr
ln -snf ${BASEDIR}/rofi $HOME/.config/rofi
ln -snf ${BASEDIR}/waybar $HOME/.config/waybar
ln -snf ${BASEDIR}/dunst $HOME/.config/dunst
ln -snf ${BASEDIR}/matugen $HOME/.config/matugen
ln -snf ${BASEDIR}/wlogout $HOME/.config/wlogout
mkdir -p $HOME/.config/quickshell
ln -snf ${BASEDIR}/quickshell/ii $HOME/.config/quickshell/ii

# kitty, fish, starship (kitty.conf uses fish as its shell)
ln -snf ${BASEDIR}/kitty $HOME/.config/kitty
ln -snf ${BASEDIR}/fish $HOME/.config/fish
ln -snf ${BASEDIR}/starship.toml $HOME/.config/starship.toml

# sounds
ln -snf ${BASEDIR}/sounds $HOME/.config/sounds

# nvim
ln -snf ${BASEDIR}/nvim $HOME/.config/nvim

# gtk-3.0 / gtk-4.0 are written directly by matugen on wallpaper switch,
# so they must be real directories rather than symlinks
mkdir -p $HOME/.config/gtk-3.0 $HOME/.config/gtk-4.0

## ranger
#ln -snf ${BASEDIR}/ranger $HOME/.config/ranger

echo "Done!"
