# mouse & keyboard
xset led on
xinput set-prop 10 335 0, 1
xinput set-prop 10 332 -0.117647

# redshift
redshift-gtk &

# dunst
dunst &

# picom
picom --experimental-backends --config ~/.config/picom/picom.conf -b &

# middle click disable
xbindkeys &

# bind caps to esc / faster key speed
setxkbmap -option caps:escape
xset r rate 300 50

# polkit
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &

# crucial if block to make sure dbus doesn't freak out (or something) 
if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

exec i3
#exec qtile
#exec spectrwm
