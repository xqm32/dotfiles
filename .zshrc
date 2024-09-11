if [ "$ALACRITTY" = "true" ]
then
  local ALA_HOME=$HOME/.config/alacritty
  local ALA_THEME=$(defaults read -g AppleInterfaceStyle 2>/dev/null || echo "Light" | tr '[:upper:]' '[:lower:]')
  theme() { ln -sf $ALA_HOME/themes/themes/$1.toml $ALA_HOME/active.toml; }
  theme github_$ALA_THEME
fi

if type brew &>/dev/null
then
  FPATH="/opt/homebrew/share/zsh/site-functions:${FPATH}"
  FPATH="/opt/homebrew/share/zsh-completions:${FPATH}"

  autoload -Uz compinit
  compinit
fi

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(starship init zsh)"
eval "$(atuin init zsh --disable-up-arrow)"

alias ll="eza -l"
alias tree="eza -T"
alias python="python3"
alias pip="uv pip"
alias venv="uv venv"
