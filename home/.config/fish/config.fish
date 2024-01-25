set -U fish_greeting

set -x PATH \
    $HOME/bin \
    $HOME/.local/bin \
    /opt/homebrew/bin \
    /opt/homebrew/sbin \
    /usr/local/bin \
    $HOME/go/bin \
    $HOME/.cargo/bin \
    $HOME/.yarn/bin \
    /opt/homebrew/share/git-core/contrib/diff-highlight \
    $PATH

set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x EDITOR code
set -x ALTERNATE_EDITOR vi
set -x DOTNET_CLI_TELEMETRY_OPTOUT 1
set -x HOMEBREW_CASK_OPTS "--appdir=$HOME/Applications"
set -x PYTHONDONTWRITEBYTECODE 1
set -x BAT_THEME "Solarized (dark)"

# Aliases
alias e="$EDITOR"
alias ls='lsd'
alias ll='ls -lhA'
alias gs='git status -s'
alias ga='git add -A'
alias gba='git branch -a'
alias gbda='git branch --merged | egrep -v "(^\*|master|main|dev)" | xargs git branch -d'
alias gc='git commit -v'
alias gco='git checkout'
alias gcb='git checkout -b'
alias gcm='git checkout main'
alias gd='git diff'
alias gl='git pull'
alias glol="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glola="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --all"
alias gfm='git fetch origin main:main'
alias gfd='git fetch origin develop:develop'
alias k='kubectl'

if status is-interactive
    mise activate fish | source

    starship init fish | source

    kubectl completion fish | source
    # fnm completions --shell fish | source
    fzf_configure_bindings --directory=\cf --processes=\cp

    zoxide init fish | source
end
