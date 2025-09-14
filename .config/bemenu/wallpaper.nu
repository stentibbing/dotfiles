#!/usr/bin/env nu

ls ~/Pictures/wallpapers | get name | bemenu | str trim | each { |file|
    swaybg -i $"~/Pictures/wallpapers/($file)" -m fill -o *
}
