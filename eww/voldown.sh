#!/bin/zsh

DEFAULT=$(pactl get-default-sink)
pactl set-sink-volume $DEFAULT -10%
CURRENT_VOL=$(pactl get-sink-volume $DEFAULT | grep Volume | cut -d '/' -f2 | cut -d '%' -f1 | xargs) 

$HOME/.config/eww/volnotif.sh $CURRENT_VOL
echo $CURRENT_VOL >> $HOME/.config/eww/volume.txt