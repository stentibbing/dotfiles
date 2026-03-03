HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000

setopt autocd extendedglob
setopt prompt_subst

unsetopt beep

bindkey -v
bindkey '^A' autosuggest-accept

export LANG="et_EE.UTF-8"
export LC_ALL="et_EE.UTF-8"
export EDITOR="nvim"
export VISUAL="nvim"
export XDG_OPEN="brave"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export MANPAGER="nvim +Man!"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/config.toml"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.npm/global/bin:$PATH"
export PATH="$HOME/.local/share/pnpm:$PATH"

alias l='ls -lah --color=auto'
alias y='yazi'
alias vi='nvim'

autoload -Uz compinit
compinit

# nvm
source /usr/share/nvm/init-nvm.sh

# syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# autosuggestions
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

eval "$(zoxide init zsh)"
eval "$(starship init zsh)"
