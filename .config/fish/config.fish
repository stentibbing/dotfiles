if status is-interactive
    fish_config theme choose catppuccin-mocha

    set -g fish_greeting

    fish_add_path -g ~/.npm/global/bin
    fish_add_path -g ~/go/bin

    set -Ux EDITOR helix
    set -Ux VISUAL helix
    set -Ux XDG_OPEN firefox

    alias hx="helix"
    alias y="yazi"
    alias note="y ~/notes"

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
# pnpm end
