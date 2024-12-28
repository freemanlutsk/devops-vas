################################################################################################################
export PS1='\[\033[1;31m\]\u\[\033[01;32m\]@\[\033[01;34m\]\h \[\033[01;36m\]\w \[\033[01;35m\]\$ \[\033[00m\]'
umask 022
eval "`dircolors`"
alias ls='ls $LS_OPTIONS'
alias ll='ls $LS_OPTIONS -l'
alias l='ls $LS_OPTIONS -lA'
alias ..='cd ..'
alias ...='cd ../..'
alias s='ssh -l root'
export EDITOR="vim"
export HISTFILESIZE=99999999
export HISTSIZE=99999999
export HISTCONTROL="ignoreboth"
export LS_OPTIONS='--color=auto -h'
export HISTTIMEFORMAT="%d/%m/%y %T "
###############################################################################################################
