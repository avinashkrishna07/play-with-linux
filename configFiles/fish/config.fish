#!/usr/bin/env fish

set -U fish_greeting
set -x GPG_TTY (tty)
set -x EDITOR nvim

### EXPORT
export TERM="xterm-256color"                      # getting proper colors
export HISTORY_IGNORE="(ls|cd|pwd|exit|poweroff|reboot|history|cd -|cd ..|doomsync|esr|ess|essr)"

### SET MANPAGER
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

### XDG variables setup
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

### home clean variables
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export GOPATH="$XDG_DATA_HOME"/go
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export HISTFILE="$XDG_STATE_HOME"/bash/history
export ANDROID_HOME=/opt/android-sdk
export DOCKER_CONFIG="$XDG_CONFIG_HOME"/docker
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export KDEHOME="$XDG_CONFIG_HOME"/kde

#path
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.local/share/cargo/bin/
fish_add_path $HOME/.config/emacs/bin
fish_add_path $HOME/.local/share/go/bin
fish_add_path $HOME/.pulumi/bin

# common alias commands
alias btop="btop --utf-force"
alias q="exit"
alias poweroff="systemctl poweroff"
alias sleep="systemctl suspend"
alias hibernate="systemctl hibernate"
alias reboot="systemctl reboot"
alias update-grub="sudo grub-mkconfig -o /boot/grub/grub.cfg"

# rust rewritest
alias cat="bat";
alias internet="sudo bandwhich"
alias ls="exa -l --color=always --group-directories-first" # my preferred listing
alias fd="fd -E /run/timeshift -E /usr/share/man -E /proc -E /tmp -E /run/user"
alias grep="rg"
alias man="tldr"

# alias commands for package manager
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias cleanup="paru -Rns $(paru -Qqtd)"
alias install="paru -S"
alias search="paru -Ss"
alias update="paru -Syu"
alias uninstall="paru -Rns"
alias pacl="paru -Qs"
alias pacorphan="paru -Qdt"
alias pacgroup="paru -Syg"
alias pacown="paru -Qo"
alias pacbin="paru -F"
alias paclist="paru -Fl"
alias paclisti="paru -Ql"
alias pacinfo="paru -Qii"

# starship
starship init fish | source
