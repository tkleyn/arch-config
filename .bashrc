# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

stty -ixon # Disables ctrl-s and ctrl-q (Used To Pause Term)

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

. "$HOME/.cargo/env"

#export PATH=$PATH:/home/tom/dermatoo/app-dev-env/dermatoo-script

alias YOCTO="cd ~/dermatoo/yocto/"
alias METAD="cd ~/dermatoo/yocto/sources/meta-dermatoo/"
alias HADES="cd ~/dermatoo/yocto/sources/meta-dermatoo/recipes-hades/hades/hades/"


# Aliases
alias ..='cd ..'
alias ...='cd ../..'
alias gcf='cd $HOME/.config'
alias gdl='cd $HOME/Downloads'
alias install='sudo pacman -S'
alias update='sudo pacman -Sy'


alias upgrade='sudo apt upgrade'
alias uplist='apt list --upgradable'
alias remove='sudo apt autoremove'


alias l='exa -ll --color=always --group-directories-first'
alias ls='exa -al --header --.icons --group-directories-first'

# Dotfiles & Files
alias reload='source ~/.bashrc'
alias gc="git clone"

# Add Color
alias egrep='grep --color=auto'

export PATH="~/bin:$PATH"
export PATH="~/.local/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"

export VISUAL=nvim;
export EDITOR=nvim;

# PS1 Customization
PS1="\[\e[32m\]\h\[\e[m\]\[\e[36m\]@\[\e[m\]\[\e[34m\]\u\[\e[m\] \W \$ "
neofetch
