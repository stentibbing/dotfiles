zstyle :compinstall filename '/home/sten/.zshrc'
autoload -Uz compinit
compinit

HISTFILE=~/.local/.histfile
HISTSIZE=20000
SAVEHIST=20000

unsetopt beep
setopt autocd
bindkey -v

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# export LANG="en_US.UTF-8"
# export LC_ALL="en_US.UTF-8"

export EDITOR="nvim"
export NVM_DIR="$HOME/.nvm"
export PHP_CS_FIXER_IGNORE_ENV=1

alias ls='ls --color=auto'
alias l="ls -la --color=auto"
alias grep='grep --color=auto'
alias vi="nvim"
alias y="yazi"
alias ai="claude"

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

