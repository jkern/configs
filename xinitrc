urxvtd &
xset b off

#xset +fp $HOME/.icons
xsetroot -cursor_name left_ptr
xrdb -merge &
`cat ~/.fehbg`

#trayer --edge bottom --align right --widthtype pixel --width 200 --transparent true --alpha 255 --SetDockType true --SetPartialStrut true &
trayer --edge bottom --align right --widthtype pixel --width 200 --transparent true --alpha 255 &
wicd-client &
dbcli.py status &
noaawall.sh &
#exec openbox-session
exec xmonad
