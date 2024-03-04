#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
#killall -q polybar

file_wal="${HOME}/.cache/wal/colors"
file_colors="${HOME}/.config/polybar/colors.ini"
content_colors=""
list_colors=()

if [[ -f "$file_wal" ]]; then
   touch $file_colors

   list_colors=($(sed -n '1,8p' $file_wal))
   content_colors="\nbackground = ${list_colors[0]}\nforeground = ${list_colors[7]}\nprimary = ${list_colors[6]}\ndisabled = ${list_colors[4]}\nalert = #9C0000"
else
   content_colors="
      \nbackground = #000000
      \nforeground = #ffffff
      \nprimary = #003399
      \ndisabled = #9999FF
      \nalert = #9C0000
   "
fi

echo -e "[colors]$content_colors" > $file_colors

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log
polybar menuh 2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."
