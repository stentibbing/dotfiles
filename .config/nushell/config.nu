use std/util "path add"

$env.config.buffer_editor = "nvim"
$env.config.table.mode = "none"
$env.config.show_banner = false

# paths
path add "~/go/bin"
path add "~/.local/share/pnpm"
path add "~/.npm/global/bin"

# aliases
alias vi = nvim
alias vim = nvim
alias y = yazi

# custom ll for detailed listing
def l [] {
	ls -la | select name type user group mode size
}

# starfish
mkdir ($nu.data-dir | path join "vendor/autoload")
starship preset nerd-font-symbols -o ($env.XDG_CONFIG_HOME | path join "nushell/starship.toml")
starship init nu | save -f ($nu.data-dir | path join "vendor/autoload/starship.nu")

# zoxide
source ~/.zoxide.nu

