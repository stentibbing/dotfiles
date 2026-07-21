use std/util "path add"

# Add env vars
$env.EDITOR = "helix"
$env.LANG = "en_US.UTF-8"
$env.LC_ALL = "en_US.UTF-8"

# Add to path
path add ($env.home | path join ".local/bin")
path add ($env.home | path join "go/bin")
path add ($env.home | path join ".cargo/bin")

# Add FNM vars to path from bash env vars
load-env (fnm env --shell bash
    | lines
    | str replace 'export ' ''
    | str replace -a '"' ''
    | split column "="
    | rename name value
    | where name != "FNM_ARCH" and name != "PATH"
    | reduce -f {} {|it, acc| $acc | upsert $it.name $it.value }
)

path add ($env.FNM_MULTISHELL_PATH | path join "bin")


zoxide init nushell | save -f ~/.zoxide.nu
