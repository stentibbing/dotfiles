$env.config = {
    show_banner: false
    buffer_editor: "/usr/bin/helix"
    edit_mode: vi

}

# Aliases
alias hx = helix
alias z = zoxide
alias y = yazi
alias ai = claude

# Functions
def l [] { ls -l | select name mode user group size }

# Zoxide 
source ~/.zoxide.nu

