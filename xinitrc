urxvtd &
xset b off

#xset +fp $HOME/.icons
xsetroot -cursor_name left_ptr
xrdb -merge &

`cat ~/.fehbg`
dbcli.py status &
wicd-client &
#trayer --edge bottom --align right --widthtype pixel --width 200 --transparent true --alpha 255 --SetDockType true --SetPartialStrut true &
trayer --edge bottom --align right --widthtype pixel --width 200 --transparent true --alpha 255 &
#exec openbox-session
exec xmonad
