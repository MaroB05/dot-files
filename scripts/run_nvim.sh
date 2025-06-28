#!/bin/bash

if [[ "$#" -ge "0" ]]; then
  alacritty --config-file=$HOME/.config/alacritty/nvim.toml -e nvim $@ &
else
  alacritty --config-file=$HOME/.config/alacritty/nvim.toml -e nvim &
fi
