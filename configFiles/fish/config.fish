#!/usr/bin/env fish
set -U fish_greeting
set -x GPG_TTY (tty)

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

### Home clean variables
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

### Firefox
# export MOZ_ENABLE_WAYLAND=1

#PATH
fish_add_path $HOME/.local/bin
fish_add_path $HOME/.local/share/cargo/bin/
fish_add_path $HOME/.config/emacs/bin
fish_add_path $HOME/.local/share/go/bin
fish_add_path $HOME/.pulumi/bin

# Common appications
alias ke="killall -w emacs"
alias e="emacsclient -c -a 'emacs' -q . & disown"
alias ess="emacsclient -a '' -e '(server-start)'"
alias doominstall="doom install"
alias doomclone="git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.config/emacs"
alias esr="killall -w emacs &&  doom sync && emacsclient -a '' -e '(server-start)'"
alias btop="btop --utf-force"
alias `="cd /run/media/a_krisssh/hardDisk/"
alias q="exit"

# Rust Rewritest
alias cat="bat";
alias internet="sudo bandwhich"
alias ls="exa -l --color=always --group-directories-first" # my preferred listing
#alias ls="exa -al --color=always --group-directories-first" # my preferred listing
alias fd="fd -E /run/timeshift -E /usr/share/man -E /proc -E /tmp -E /run/user"
alias grep="rg"
alias man="tldr"

# Notest push to gitlab
alias notes_push="~/Documents/Scripts/org-export-md.sh"
alias site_push="emacs -q --script ~/Documents/Projects/Blog/build-script.el"
alias page_up="~/Documents/Projects/Web-Start-Page/main.py ~/Documents/Projects/Web-Start-Page/anime.html"
alias pdf_join="~/Documents/Scripts/pdf_join.sh"
alias unlock="sudo rm /var/lib/pacman/db.lck"
alias cleanup="paru -Rns $(paru -Qqtd)"
alias pacu="paru -Syu"
alias pacs="paru -Ss"
alias paci="paru -S"
alias pacr="paru -Rns"
alias pacl="paru -Qs"
alias pacback="paru -Qqe > ~/Documents/Scripts/copy-configuration/pacman-installed.txt"
alias pacorphan="paru -Qdt"
alias pacgroup="paru -Syg"
alias pacown="paru -Qo"
alias pacbin="paru -F"
alias paclist="paru -Fl"
alias paclisti="paru -Ql"
alias pacinfo="paru -Qii"

# starship
starship init fish | source
