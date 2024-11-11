# set user binarys
set -U fish_user_paths $fish_user_paths $HOME/.local/bin

# disable greeting
set fish_greeting

set TERM "xterm-256color"
set EDITOR "nvim"
set VISUAL "nvim"
set -gx XDG_CONFIG_HOME $HOME/.config
set -gx NVM_DIR $HOME/.nvm

# zoxide
zoxide init fish | source

# aliases
alias vi="nvim"

function fish_user_key_bindings
   fish_vi_key_bindings
end

# golang 
set -gx PATH $PATH /usr/local/go/bin
set -gx PATH $PATH $HOME/go/bin

# yarn
set -gx PATH $PATH $(yarn global bin)
