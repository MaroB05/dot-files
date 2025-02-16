#!/bin/bash

if [[ "$#" -ge "0" ]]; then
  alacritty --config-file=$HOME/.config/alacritty/nvim.yml -e nvim $@ &
else
  alacritty --config-file=$HOME/.config/alacritty/nvim.yml -e nvim &
fi
