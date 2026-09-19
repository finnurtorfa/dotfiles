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

# sounds
ln -snf ${BASEDIR}/sounds $HOME/.config/sounds

# nvim
ln -snf ${BASEDIR}/nvim $HOME/.config/nvim

## ranger
#ln -snf ${BASEDIR}/ranger $HOME/.config/ranger

echo "Done!"
