#!/bin/bash

killall -9 waybar

waybar &
# BEGIN WAL
[colors.primary]
background = '#090302'
foreground = '#cbbca5'

[colors.cursor]
text   = '#090302' # Apply background color to color of text inside cursor
cursor = '#cbbca5' # Apply foreground color to color of cursor

[colors.vi_mode_cursor]
text    = '#090302' # Same as above
cursor  = '#cbbca5'

[colors.search.matches]
foreground = '#090302' # Same as above
background = '#cbbca5' # Apply bright/white color to bg color of matching search

[colors.search.focused_match]
foreground = 'CellBackground'
background = 'CellForeground'

[colors.line_indicator]
foreground = 'None'
background = 'None'

[colors.footer_bar]
foreground = '#8e8373'
background = '#cbbca5'

[colors.selection]
text       = 'CellBackground'
background = 'CellForeground'

[colors.normal]
black   = '#090302'
red     = '#646253'
green   = '#A35C15'
yellow  = '#8B5B30'
blue    = '#D67513'
magenta = '#BB8337'
cyan    = '#E28B1C'
white   = '#cbbca5'

[colors.bright]
black   = '#8e8373'
red     = '#646253'
green   = '#A35C15'
yellow  = '#8B5B30'
blue    = '#D67513'
magenta = '#BB8337'
cyan    = '#E28B1C'
white   = '#cbbca5'
# END WAL