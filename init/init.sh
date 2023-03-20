#! /bin/bash

xset r rate 180 25
xrandr --output eDP --right-of DisplayPort-0
xrandr --output DisplayPort-0 --set TearFree on
xrandr --output eDP --set TearFree on
setxkbmap -layout pl

xmodmap -e "clear lock"
xmodmap -e "keycode 9 = grave asciitilde Escape"
xmodmap -e "keysym Caps_Lock = Escape"
xmodmap -e "keysym Insert = XF86AudioPlay"
xmodmap -e "keysym Delete = XF86AudioPrev"
xmodmap -e "keysym Home = XF86AudioNext"
xmodmap -e "keysym Alt_L = ISO_Level3_Shift"

source ~/.dotfiles/init/venv/bin/activate
python ~/.dotfiles/init/init.py
deactivate
