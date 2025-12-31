#!/usr/bin/env bash

THEMES_PATH="$XDG_CONFIG_HOME/alacritty/themes"

fzf --delimiter="/" --with-nth -1 --walker-root=$THEMES_PATH --reverse --preview-border \
  --preview "echo '[general]\nimport = [\"~/.config/alacritty/themes/{-1}\"]' > ~/.config/alacritty/current_theme.toml &&
  ./print_colors.sh" --preview-window up
