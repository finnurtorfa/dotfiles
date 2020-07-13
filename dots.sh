#!/bin/bash

BASEDIR="$(cd "$(dirname "$0")" && pwd)"

# bin
for f in $(ls $BASEDIR/bin)
do
    ln -snf $BASEDIR/bin/$f $HOME/bin
done

# compton
ln -snf ${BASEDIR}/compton.conf $HOME/.config/compton.conf

# fontconfig
ln -snf ${BASEDIR}/fontconfig $HOME/.config/fontconfig

# i3
ln -snf ${BASEDIR}/i3 $HOME/.config/i3

# mplayer
ln -snf ${BASEDIR}/mplayer $HOME/.mplayer

# nvim
ln -snf ${BASEDIR}/nvim $HOME/.config/nvim

# polybar
ln -snf ${BASEDIR}/polybar $HOME/.config/polybar

# ranger
ln -snf ${BASEDIR}/ranger $HOME/.config/ranger

# redshift
ln -snf ${BASEDIR}/redshift.conf $HOME/.config/redshift.conf

## startpage
#ln -snf ${BASEDIR}/startpage $HOME/.startpage

# twmn
ln -snf ${BASEDIR}/twmn $HOME/.config/twmn

# X
ln -snf ${BASEDIR}/Xresources.d/xsession $HOME/.xsession
ln -snf ${BASEDIR}/Xresources.d/Xdefaults $HOME/.Xdefaults
ln -snf ${BASEDIR}/Xresources.d/Xresources $HOME/.Xresources
ln -snf ${BASEDIR}/Xresources.d $HOME/.Xresources.d

# ROFI
ln -snf ${BASEDIR}/Xresources.d/Xresources $HOME/.Xresources

# zsh
ln -snf ${BASEDIR}/zsh $HOME/.zsh
ln -snf ${BASEDIR}/zsh/zshrc $HOME/.zshrc

echo "Done!"
