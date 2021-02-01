function toggle_layout() {
  CURRENT_LAYOUT=$(yabai -m query --spaces --space | jq '.type')
  if [ $CURRENT_LAYOUT = '"stack"' ]; then
    yabai -m space --layout bsp
  else
    yabai -m space --layout stack
  fi
}