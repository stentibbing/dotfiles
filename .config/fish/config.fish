if status is-interactive
   # disable greeting
   set -U fish_greeting

   # nvm
   set -gx NVM_DIR $HOME/.nvm

   # golang 
   set -gx PATH $PATH /usr/local/go/bin
   set -gx PATH $PATH $HOME/go/bin

   # zoxide
   zoxide init fish | source

   # aliases
   alias vi="nvim"
end


