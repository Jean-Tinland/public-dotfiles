# example : rename_space 1 "web"

function rename_space() {
  yabai -m space $1 --label $2
  osascript -e 'tell application id "tracesOf.Uebersicht" to refresh widget id "simple-bar-spaces-jsx"'
}