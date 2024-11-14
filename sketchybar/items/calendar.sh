#!/bin/bash

calendar=(
  icon=􀐫
  icon.font="$FONT:Black:12.0"
  icon.padding_left=0
  label.align=left
  label.width=120
  padding_right=15
  update_freq=1
  script="$PLUGIN_DIR/calendar.sh"
  click_script="$PLUGIN_DIR/zen.sh"
)

sketchybar --add item calendar right       \
           --set calendar "${calendar[@]}" \
           --subscribe calendar system_woke
