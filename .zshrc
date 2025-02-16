if type brew &>/dev/null; then
	FPATH=/opt/homebrew/share/zsh-completions:$FPATH

	autoload -Uz compinit
	compinit
fi

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"
eval "$(atuin init zsh --disable-up-arrow)"

alias ll="eza -l"
alias tree="eza -T"
