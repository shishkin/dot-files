DEFAULT_USER="serega"
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="powerlevel10k/powerlevel10k"

export NVM_DIR=$HOME/.nvm

plugins=(git osx brew)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:$HOME/.local/bin:/opt/homebrew/bin:/usr/local/bin:$HOME/.dotnet/tools:$HOME/.cargo/bin:/opt/homebrew/share/git-core/contrib/diff-highlight:/usr/local/anaconda3/bin:/usr/X11/bin:$PATH

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export EDITOR="nvim"
export ALTERNATE_EDITOR=vi
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export HOMEBREW_CASK_OPTS="--appdir=$HOME/Applications"

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


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/serega/.sdkman"
[[ -s "/Users/serega/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/serega/.sdkman/bin/sdkman-init.sh"
