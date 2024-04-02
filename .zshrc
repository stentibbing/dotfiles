# Oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="agnoster"
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

# Aliases
alias vi="nvim"
alias vim="nvim"
alias cd="z"

export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:$HOME/.cargo/env"

# Node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  

# Launch tmux at startup
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
 exec tmux
fi

# Golang
export PATH="$PATH:/usr/local/go/bin"
export PATH="$HOME/go/bin:$PATH"

#Custom shell scripts
export PATH="$HOME/.scripts:$PATH"

# Zoxide
export PATH="$HOME/.local/bin:$PATH"
eval "$(zoxide init zsh)"
