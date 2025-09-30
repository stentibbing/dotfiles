#!/usr/bin/env nu

let lid_state_file = "/proc/acpi/button/lid/LID/state"
let display_name = "eDP-1"

swaymsg reload

if not ($lid_state_file | path exists) {
    print $"Lid state file not found: ($lid_state_file)"
    exit 1
}

let lid_open = (
    open $lid_state_file
    | lines
    | find state:
		| str contains "open"
		| first
)

if $lid_open  {
	swaymsg output $display_name enable
} else {
	swaymsg output $display_name disable
} 
