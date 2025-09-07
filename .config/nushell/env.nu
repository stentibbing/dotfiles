$env.EDITOR = "nvim"
$env.VISUAL = "nvim"
$env.XDG_OPEN = "firefox"
$env.XDG_CONFIG_HOME = ($env.HOME | path join ".config")
$env.XDG_DATA_HOME = ($env.HOME | path join ".local" "share")

zoxide init nushell | save -f ~/.zoxide.nu
