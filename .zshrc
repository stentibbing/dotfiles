HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt autocd extendedglob
setopt prompt_subst

unsetopt beep

bindkey -v
bindkey '^A' autosuggest-accept

export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER="nvim +Man!"
export STARSHIP_CONFIG="$HOME/.config/starship/config.toml"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

alias l='ls -lah --color=auto'
alias y='yazi'
alias vi='nvim'
alias ai='claude'

autoload -Uz compinit
compinit

#plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/
source /usr/share/zsh/plugins/zsh-autosuggestions/


eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# launch tmux at startup
# if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
# 	tmux attach || tmux new-session
# fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
