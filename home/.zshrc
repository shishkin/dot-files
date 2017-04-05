DEFAULT_USER="serega"
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="agnoster"

plugins=(git osx brew brew-cask autojump docker)

source $ZSH/oh-my-zsh.sh

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export PATH=$HOME/.cargo/bin:/usr/local/Library/LinkedKegs/git/share/git-core/contrib/diff-highlight:$JAVA_HOME/bin:$HOME/anaconda/bin:$HOME/.local/bin:$HOME/bin:/usr/local/bin:/usr/X11/bin:$PATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR="emacsclient -nw"
export ALTERNATE_EDITOR=vi

# Aliases
alias e=$EDITOR
alias gs='git status -s'
alias ga='git add -A'
alias gfm='git fetch origin master:master'

