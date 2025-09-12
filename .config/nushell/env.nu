$env.EDITOR = "nvim"
$env.VISUAL = "nvim"
$env.XDG_OPEN = "firefox"
$env.XDG_CONFIG_HOME = ($env.HOME | path join ".config")
$env.XDG_DATA_HOME = ($env.HOME | path join ".local" "share")
$env.STARSHIP_CONFIG = $env.XDG_CONFIG_HOME | path join "starship/starship.toml"

zoxide init nushell | save -f ~/.zoxide.nu
