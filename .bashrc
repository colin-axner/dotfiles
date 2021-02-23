#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

## Git auto-completion
source /usr/share/git/completion/git-completion.bash

## global script execution
PATH=~/bin:$PATH

## Android specific tools, ok to delete
if [ -d "$HOME/tools/adb-fastboot/platform-tools" ] ; then
 export PATH="$HOME/tools/adb-fastboot/platform-tools:$PATH"
fi

export SYSTEMD_EDITOR=vim
export EDITOR=vim

## automatically prepend cd when entering a path
## does not autofill
## shopt -s autocd

## Autojump
[[ -s ~/programs/autojump-git/pkg/autojump-git/etc/profile.d/autojump.sh ]] && source ~/programs/autojump-git/pkg/autojump-git/etc/profile.d/autojump.sh

