urxvtd &
#xset b off

#xset +fp $HOME/.icons
xsetroot -cursor_name left_ptr 
xrdb -load ~/.Xdefaults &
bgquote.sh &
`cat ~/.fehbg`

#trayer --edge bottom --align right --widthtype pixel --width 200 --transparent true --alpha 255 --SetDockType true --SetPartialStrut true &
trayer --edge bottom --align right --widthtype pixel --width 200 --transparent true --alpha 255 &
wicd-client &
dropboxd &
#exec openbox-session
exec xmonad
