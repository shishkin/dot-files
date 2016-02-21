DEFAULT_USER="serega"
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"

plugins=(git osx brew brew-cask autojump)

source $ZSH/oh-my-zsh.sh

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH=$HOME/.local/bin:$HOME/bin:$JAVA_HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/Applications/Postgres.app/Contents/Versions/9.4/bin

export LANG=en_US.UTF-8
export EDITOR="emacsclient -nw"
export ALTERNATE_EDITOR=vi

# Aliases
alias e=$EDITOR
alias gs='git status'
alias ga='git add -A'
