fish_add_path -g ~/.npm/global/bin
fish_add_path -g ~/go/bin

set -Ux EDITOR nvim
set -Ux VISUAL nvim
set -Ux XDG_OPEN firefox
set -Ux XDG_CONFIG_HOME "$HOME/.config"

if status is-interactive
    fish_config theme choose moonfly

    set -g fish_greeting

    alias vi="nvim"
    alias y="yazi"

    zoxide init fish | source

    if test -z $DISPLAY; and test (tty) = /dev/tty1
       sway
    end
end

# pnpm
set -gx PNPM_HOME "/home/sten/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
    set -gx PATH "$PNPM_HOME" $PATH
end

function fish_user_key_bindings
    bind tab forward-char
end
