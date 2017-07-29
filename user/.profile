#PROMPTFILE=$(brew --prefix bash-git-prompt)/share/gitprompt.sh # takes ~1 second
PROMPTFILE=/usr/local/opt/bash-git-prompt/share/gitprompt.sh
if [ -f "$PROMPTFILE" ]; then
    GIT_PROMPT_FETCH_REMOTE_STATUS=0
    GIT_PROMPT_SHOW_UNTRACKED_FILES=no
    GIT_PROMPT_THEME=Solarized
    source "$PROMPTFILE"
fi

#source ~/.git-prompt.sh
#export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
#export PS1='\[\033[01;34m\] \w\[\033[01;32m\]$(__git_ps1 " (%s)")\[\033[00m\]$ '

export DEVKITPRO=/opt/devkitPro
export DEVKITARM=$DEVKITPRO/devkitARM
export PATH=$PATH:/opt/local/bin:$DEVKITARM/bin
export NIHSTRO=~/Documents/work/3ds/nihstro/build

alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

cd ~