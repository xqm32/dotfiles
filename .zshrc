HISTSIZE=1000000
SAVEHIST=1000000
setopt INC_APPEND_HISTORY

if type brew &>/dev/null; then
	FPATH=/opt/homebrew/share/zsh-completions:$FPATH

	autoload -Uz compinit
	compinit
fi

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(mise activate zsh)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
source <(fzf --zsh)

alias ll="eza -l"
alias tree="eza -T"
