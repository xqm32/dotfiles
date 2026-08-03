export PATH=~/.local/bin:$PATH

export GOPATH=~/.local/share/go
export GOBIN=~/.local/bin

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(mise activate zsh --shims)"
