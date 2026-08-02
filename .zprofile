export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/Workspaces/xqm32/dotfiles/.local/bin:$PATH"

export GOPATH="$HOME/.local/share/go"
export GOBIN="$HOME/.local/bin"

export MISE_GLOBAL_CONFIG_FILE="$HOME/Workspaces/xqm32/dotfiles/.config/mise/config.toml"

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(mise activate zsh --shims)"
