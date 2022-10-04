set -U fish_greeting

set -x PATH \
    $HOME/bin \
    $HOME/.local/bin \
    /opt/homebrew/opt/python/libexec/bin \
    /opt/homebrew/bin \
    /opt/homebrew/sbin \
    /usr/local/bin \
    $HOME/.dotnet/tools \
    $HOME/go/bin \
    $HOME/.cargo/bin \
    $HOME/.yarn/bin \
    /opt/homebrew/share/git-core/contrib/diff-highlight \
    $PATH

set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x EDITOR nvim
set -x ALTERNATE_EDITOR vi
set -x DOTNET_CLI_TELEMETRY_OPTOUT 1
set -x HOMEBREW_CASK_OPTS "--appdir=$HOME/Applications"
set -x PYTHONDONTWRITEBYTECODE 1
set -x BAT_THEME "Solarized (dark)"
set -x DOCKER_HOST "unix://$HOME/.local/share/containers/podman/machine/podman-machine-default/podman.sock"

# Aliases
alias e="$EDITOR"
alias vim=nvim
alias ls='lsd'
alias ll='ls -lhA'
alias gs='git status -s'
alias ga='git add -A'
alias gfm='git fetch origin main:main'
alias gfd='git fetch origin develop:develop'
alias docker=podman

eval "$(fnm env)"

eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

if status is-interactive
    # Commands to run in interactive sessions can go here
    starship init fish | source
end
