# Some useful bash stuff for either .bashrc or .bash_profile

# source bashrc if this is bash_profile and contents in bashrc
if [ -f /etc/bashrc ]; then
	source /etc/bashrc
fi

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# ---
# Setup prompt
# ---
# Color definitions (taken from Color Bash Prompt HowTo)
# Bold (normal are all \e[0;??m )
BBlack='\e[1;30m'    # black
BRed='\e[1;31m'      # red
BGreen='\e[1;32m'    # green
BYellow='\e[1;33m'   # yellow
BBlue='\e[1;34m'     # blue
BPurple='\e[1;35m'   # purple
BCyan='\e[1;36m'     # cyan
BWhite='\e[1;37m'    # white

# [host:dir] (in bold yellow)
#export PS1="\["$BYellow"\][\h:\w]\$\[\e[0m\] "

# [user dir] (in bold yellow)
export PS1="\["$BYellow"\][\u \w]\$\[\e[0m\]"

# ignore duplicates in history
export HISTCONTROL=ignoredups

# ---
# Aliases
# ---
alias ls='ls --color=auto'
alias ll='ls -l'
alias lrt='ls -lrth'
alias la='ls -a'
alias ll='ls -l'

alias ..='cd ..'
alias ...='cd ../../'

alias du='du -kh'
alias df='df -kTh'

alias enw='emacs -nw'

alias rbq='root -b -q'
alias root='root -l'

alias timev='/usr/bin/time -v'

# cleanup temp files in current directory
aloas cleanup='rm *~ *.so *.d *.pcm'
