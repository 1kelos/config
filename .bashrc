# Cruft
export LS_OPTIONS='--color=auto'
eval `dircolors`

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Colour Codes
export Cyan="\[\e[m\]\[\e[0;36m\]"
export Red="\[\e[m\]\[\e[0;31m\]"
export LightCyan="\[\e[m\]\[\e[1;36m\]"
export LightRed="\[\e[m\]\[\e[1;31m\]"
export white="\[\e[0;37m\]"
export BGREEN='\[\033[1;32m\]'
export GREEN='\[\033[0;32m\]'
export BRED='\[\033[1;31m\]'
export RED='\[\033[0;31m\]'
export BBLUE='\[\033[1;34m\]'
export BLUE='\[\033[1;34m\]'

# Display Prompt
if [ `/usr/bin/whoami` = 'root' ]
then
    PS1='\[\033[01;37;41m\]\u \[\033[01;33m\] \w\[\033[00m\] '
else
    PS1='\[\033[0;34m\]\u \[\033[0;32m\]\w \[\033[0;31m\]# \[\033[00m\]'
fi

# To enable the settings / commands in this file for login shells as well,
# this file has to be sourced in /etc/profile.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# enable bash completion in interactive shells
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

#aliases
alias grep="grep --color "
alias ls="ls --color"