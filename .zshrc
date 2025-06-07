# History of commands
HISTFILE=$HOME/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify
bindkey -e

zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit && compinit

# ---- starship theme ----
eval "$(starship init zsh)"

# ---- autosuggestion ----
# linux
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# mac
# source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# ---- Grep color scheme ----
alias grep='grep --color=auto'

# ---- nvm ----
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# ---- eza (better ls) ----
alias ls='eza -l --icons'

# ---- Zoxide (better cd) ----
eval "$(zoxide init zsh)"
alias cd="z"
