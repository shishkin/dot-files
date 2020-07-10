# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

DEFAULT_USER="serega"
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"

export NVM_DIR=$HOME/.nvm

plugins=(git osx brew autojump docker)

source $ZSH/oh-my-zsh.sh

# export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
export JAVA_HOME=$HOME/lib/graalvm-ce-java8-20.0.0/Contents/Home
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$HOME/.nvm/versions/node/v8.14.0/bin:$HOME/.dotnet/tools:$HOME/.cargo/bin:/usr/local/Library/LinkedKegs/git/share/git-core/contrib/diff-highlight:$JAVA_HOME/bin:/usr/local/anaconda3/bin:/usr/X11/bin:$PATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR="nvim"
export ALTERNATE_EDITOR=vi
export DOTNET_CLI_TELEMETRY_OPTOUT=1

# Aliases
alias e=$EDITOR
alias vim=nvim
alias ls='lsd'
alias ll='ls -lhA'
alias gs='git status -s'
alias ga='git add -A'
alias gfm='git fetch origin master:master'
alias gfd='git fetch origin develop:develop'


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --hidden --glob "!.git/*"'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
