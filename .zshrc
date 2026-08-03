HISTSIZE=1000000
SAVEHIST=1000000
setopt INC_APPEND_HISTORY

fpath=(~/Workspaces/github/zsh-completions/src ~/.local/share/zsh/site-functions $fpath)

autoload -Uz compinit
compinit

source ~/Workspaces/github/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/Workspaces/github/zsh-autosuggestions/zsh-autosuggestions.zsh

source <(mise activate zsh)
source <(starship init zsh)
source <(zoxide init zsh)
source <(fzf --zsh)
