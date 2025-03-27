if status is-interactive
    fish_config theme choose "Rosé Pine"

    set -g fish_greeting

    fish_add_path -g ~/.npm/global/bin
    fish_add_path -g ~/go/bin

    set -Ux EDITOR helix
    set -Ux VISUAL helix
    set -Ux XDG_OPEN firefox

    alias hx="helix"
    alias y="yazi"

    zoxide init fish | source

    if test -z $DISPLAY; and test (tty) = /dev/tty1
        sway
    end
end
