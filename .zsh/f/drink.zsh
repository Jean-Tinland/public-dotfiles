function drink() {
  echo 'Launch automated reminder task...' && echo '' 
  TITLE='automated-message'
  MESSAGE='Time to drink some water!'
  TIMING="$(($1 * 60))"

  if [ "$(uname)" = "Linux" ]; then
    while true
      do notify-send $TITLE $MESSAGE
      echo 'Notification sent!' && echo ''
      sleep $TIMING
    done
  else
    while true
      do terminal-notifier -title $TITLE -message $MESSAGE
      echo 'Notification sent!' && echo ''
      sleep $TIMING
    done
  fi
}