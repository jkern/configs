
# Check for an interactive session
[ -z "$PS1" ] && return

alias ls='ls --color=auto'
alias emacs='emacs -nw'

#PS1='\[\033[36m\]\u\[\033[37m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]$ '
PS1='[\u@\h \W]\$ '
PATH=$PATH:$HOME/bin

complete -cf sudo
complete -cf man
complete -cf screen

#alias grabit='scrot -s'
