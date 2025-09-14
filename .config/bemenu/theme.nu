#!/usr/bin/env nu

let font = "RobotoMono Nerd Font Mono 10"
let width = "0.30"
let height = "10"
let line_height = "24"
let border_size = "2"
let fg = "#bdbdbd"
let bg = "#080808"
let arrow = "#99ad6a"
let selected_fg = "#080808"
let selected_bg = "#80a0ff"
let border = "#ff5189"

let theme = [
  '--fn' $font
  '-W' $width
  '-l' $height
  '-H' $line_height
  '-B' $border_size
  '--fixed-height'
  '-c'
  '-n'
  '-p' ''
  '--tf' $arrow
  '--tb' $bg
  '--ff' $fg
  '--fb' $bg
  '--cf' $bg
  '--sf' $bg
  '--sb' $bg
  '--hf' $bg
  '--hb' $selected_bg
  '--nf' $fg
  '--nb' $bg
  '--af' $fg
  '--ab' $bg
  '--bdr' $border
]

