urxvtd &
xsetroot -cursor_name left_ptr 
xrdb -load ~/.Xdefaults &

xmodmap -e 'remove Lock = Caps_Lock'
xmodmap -e 'keysym Caps_Lock = Control_L'
xmodmap -e 'add Control = Control_L'

`cat ~/.fehbg`
trayer --edge bottom --align right --widthtype pixel --width 200 --transparent true --alpha 255 &
wicd-client &
dropboxd &

exec xmonad
