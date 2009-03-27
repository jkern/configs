urxvtd &
xset b off

#xset +fp $HOME/.icons
xsetroot -cursor_name left_ptr
xrdb -merge &

`cat ~/.fehbg`
#exec openbox-session
exec xmonad
