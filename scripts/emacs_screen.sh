#!/bin/bash

eval $(xwininfo -name emacs@chromia | sed -n -e "s/^ \+Absolute upper-left X: \+\([0-9]\+\).*/x=\1/p")
eval $(xrandr --listactivemonitors | sed -n -e "s/^Monitors: \+\([0-9]\+\)/m=\1/p")
if [ "$m" -eq "1" ]; then
    echo "0"
    exit
fi
if [ "$x" -gt "1919" ]; then
    echo "0"
else
    echo "1"
fi
