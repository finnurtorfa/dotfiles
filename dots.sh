#!/bin/bash

BASEDIR="$(cd "$(dirname "$0")" && pwd)"

# bin
for f in $(ls $BASEDIR/bin)
do
    ln -snf $BASEDIR/bin/$f $HOME/bin
done

# compton
ln -snf ${BASEDIR}/compton.conf $HOME/.config/compton.conf

# i3
ln -snf ${BASEDIR}/i3 $HOME/.config/i3

# sway
ln -snf ${BASEDIR}/sway $HOME/.config/sway

# waybar
ln -snf ${BASEDIR}/waybar $HOME/.config/waybar
ln -snf ${BASEDIR}/waybar/waybar.sh $HOME/bin

# systemd/User services
ln -snf ${BASEDIR}/systemd $HOME/.config/systemd

# mako
ln -snf ${BASEDIR}/mako $HOME/.config/mako

# sounds
ln -snf ${BASEDIR}/sounds $HOME/.config/sounds

# wallpapers
ln -snf ${BASEDIR}/wallpapers $HOME/.config/wallpapers

# mplayer
ln -snf ${BASEDIR}/mplayer $HOME/.mplayer

# nvim
ln -snf ${BASEDIR}/nvim $HOME/.config/nvim

# polybar
ln -snf ${BASEDIR}/polybar $HOME/.config/polybar
ln -snf ${BASEDIR}/polybar/launch.sh $HOME/bin

# ranger
ln -snf ${BASEDIR}/ranger $HOME/.config/ranger

# redshift
ln -snf ${BASEDIR}/redshift.conf $HOME/.config/redshift.conf

# twmn
ln -snf ${BASEDIR}/twmn $HOME/.config/twmn

# X
ln -snf ${BASEDIR}/Xresources.d/Xresources $HOME/.Xresources
ln -snf ${BASEDIR}/Xresources.d/Xresources $HOME/.Xdefaults

## zsh
ln -snf ${BASEDIR}/zsh $HOME/.zsh
ln -snf ${BASEDIR}/zsh/zshrc $HOME/.zshrc
#
echo "Done!"
