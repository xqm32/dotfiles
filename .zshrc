HISTSIZE=1000000
SAVEHIST=1000000
setopt INC_APPEND_HISTORY

if type mise &>/dev/null; then
	FPATH=$HOME/Workspaces/github/zsh-completions/src:$FPATH

	autoload -Uz compinit
	compinit
fi

source $HOME/Workspaces/github/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/Workspaces/github/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(mise activate zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)

alias ll="eza -l"
alias tree="eza -T"
