HISTSIZE=1000000
SAVEHIST=1000000
setopt INC_APPEND_HISTORY

FPATH=~/Workspaces/github/zsh-completions/src:~/.local/share/zsh/site-functions:$FPATH

autoload -Uz compinit
compinit

source ~/Workspaces/github/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/Workspaces/github/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(mise activate zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)

alias ll="eza -l"
alias tree="eza -T"
