#!/bin/bash

wal_path="${HOME}/.cache/wal/colors"
colors_path="${HOME}/.config/polybar/colors.ini"
colors_text="\nbackground = #000000\nforeground = #ffffff\nprimary = #003399\ndisabled = #9999FF\nalert = #9C0000"

if [[ -f "$wal_path" ]]; then
   colors_list=($(sed -n '1,8p' $wal_path))
   colors_text="\nbackground = ${colors_list[0]}\nforeground = ${colors_list[7]}\nprimary = ${colors_list[6]}\ndisabled = ${colors_list[4]}\nalert = #9C0000"
fi

touch $colors_path
echo -e "[colors]$colors_text" > $colors_path

