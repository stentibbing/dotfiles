# zsh
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob

# zsh keybingings
bindkey -v

# autosuggestion plugin
bindkey '^ ' autosuggest-accept

# oh-my-zsh 
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=bira

plugins=(git zsh-autosuggestions zsh-syntax-highlighting docker docker-machine docker-compose)
source $ZSH/oh-my-zsh.sh

# launch tmux at startup
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
 exec tmux
fi

# aliases
alias vi="nvim"
alias vim="nvim"

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

