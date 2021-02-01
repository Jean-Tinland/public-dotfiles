function rename_space() {
  yabai -m space $1 --label $2
  osascript -e 'tell application id "tracesOf.Uebersicht" to refresh widget id "simple-bar-spaces-jsx"'
  osascript -e 'tell application id "tracesOf.Uebersicht" to refresh widget id "simple-bar-spaces-2-jsx"'
}