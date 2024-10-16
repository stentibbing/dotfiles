# zsh
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob

# zsh keybingings
bindkey -v

# autosuggestion plugin
bindkey '^I'   complete-word       # tab complete
bindkey '^[[Z' autosuggest-accept  # shift-tab autosuggest

# oh-my-zsh 
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=abzt

plugins=(git zsh-autosuggestions zsh-syntax-highlighting docker docker-compose web-search)
source $ZSH/oh-my-zsh.sh

# launch tmux at startup
# if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
#  exec tmux
# fi

# aliases
alias vi="nvim"

# node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

# golang
export PATH="$PATH:/usr/local/go/bin"
export PATH="$HOME/go/bin:$PATH"

# zoxide
export PATH="$HOME/.local/bin:$PATH"
eval "$(zoxide init zsh)"

# docker
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes

