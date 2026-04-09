#
# ~/.bashrc
#

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '
exec zsh

# uv
export PATH="/home/sian/.local/bin:$PATH"

# opencode
export PATH=/home/sian/.opencode/bin:$PATH
