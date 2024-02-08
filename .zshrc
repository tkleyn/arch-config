# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

stty -ixon # Disables ctrl-s and ctrl-q (Used To Pause Term)


## History file configuration
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"
[ "$HISTSIZE" -lt 50000 ] && HISTSIZE=50000
[ "$SAVEHIST" -lt 10000 ] && SAVEHIST=10000

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

## History command configuration
setopt extended_history       # record timestamp of command in HISTFILE
setopt hist_expire_dups_first # delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_ignore_dups       # ignore duplicated commands history list
setopt hist_ignore_space      # ignore commands that start with space
setopt hist_verify            # show command with history expansion to user before running it
setopt share_history          # share command history data

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# alias dermatoo env
alias YOCTO="cd ~/dermatoo/yocto/"
alias METAD="cd ~/dermatoo/yocto/sources/meta-dermatoo/"
alias HADES="cd ~/dermatoo/yocto/sources/meta-dermatoo/recipes-hades/hades/hades/"
alias LINUX="cd ~/dermatoo/linux/"

alias vi="vim"

# pacman alias
alias list='sudo pacman -Qe'
alias install='sudo pacman -S'
alias upgrade='sudo pacman -Syu'
alias uninstall='sudo pacman -Rsc'
alias pclean='sudo pacman -Rns $(pacman -Qdtq)'

# terminal alias
alias l='exa -ll --color=always --group-directories-first'
alias ls='exa -al --header --icons --group-directories-first'
alias ..='cd ..'
alias ...='cd ../..'
alias gcf='cd $HOME/.config'
alias gdl='cd $HOME/Downloads'
alias reload='source ~/.zshrc'
alias gc="git clone"
alias egrep='grep --color=auto' # Add Color

# tools alias
alias wifi='nmtui'
alias screenshot='grimshot save area ~/screenshots/screenshot_$(date -d "today" +"%Y%m%d%H%M%S").png'

# commands path
export PATH="~/bin:$PATH"
export PATH="~/.local/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="~/.cargo/bin:$PATH"

# dermatoo commands path
export PATH=$PATH:/home/archi/.scripts
export PATH=$PATH:/home/archi/dermatoo/app-dev-env/dermatoo-script

# source cargo env
. "$HOME/.cargo/env"

# Prompt Customization
PS1="%F{green}%n%F{cyan}@%F{blue}%m %F{white}~ $ "

# print distro logo and data
clear
neofetch
