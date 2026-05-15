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
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/config.toml"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

alias l='ls -lah --color=auto'
alias y='yazi'
alias vi='nvim'
alias ai='claude'
alias bat='batcat'

autoload -Uz compinit
compinit

# syntax highlighting
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# autosuggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
	tmux attach || tmux new-session
fi

