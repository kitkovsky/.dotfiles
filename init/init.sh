# linux on start things
xset r rate 180 25
nitrogen --restore
xrandr --output eDP --right-of DisplayPort-0
xrandr --output DisplayPort-0 --set TearFree on
xrandr --output eDP --set TearFree on
setxkbmap -layout pl

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

xmodmap -e "clear lock"
xmodmap -e "keysym Caps_Lock = Escape"
xmodmap -e "keysym Insert = XF86AudioPrev"
xmodmap -e "keysym Home = XF86AudioPlay"
xmodmap -e "keysym Prior = XF86AudioNext"
xmodmap -e "keysym Delete = XF86AudioPrev"
xmodmap -e "keysym End = XF86AudioPlay"
xmodmap -e "keysym Next = XF86AudioNext"
xmodmap -e "keysym Alt_L = ISO_Level3_Shift"
