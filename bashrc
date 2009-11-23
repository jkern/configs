# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
alias emacs='emacs -nw'
alias t='todo -a -d /home/jkern/.todo'
alias vi='vim'
alias sbcld='screen -d -m -S lisp sbcl'
alias sudo='sudo -E'

#alias grab=cd ~/personal/Dropbox/Photos/Screenshots && scrot -cd 3 '%Y%m%d_shot_01.png' && cd ~'
alias webcam='mplayer tv:// -tv driver=v4l2:width=640:height=480:device=/dev/video0 -fps 15 -vf screenshot'


#PS1='\[\033[36m\]\u\[\033[37m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]$ '
#PS1='[\u@\h \W]\$ '
PS1='\[\033[1;31m\]\W/\[\033[0m\] '
PATH=$PATH:$HOME/bin

complete -cf sudo
complete -cf man
complete -cf screen
complete -F _todo_sh -o default t
#source ~/.bash_completion.d/todo_completer.sh


# Check for an interactive session
[ -z "$PS1" ] && return
