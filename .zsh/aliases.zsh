alias redeploy="git commit -m "Redeploy" --allow-empty && git push"

alias reload_zsh="source ~/.zshrc"
alias zsh_config="vi ~/.zshrc"
alias zsh_aliases="vi ~/.zsh/aliases.zsh"
alias zsh_functions="vi ~/.zsh/functions.zsh"
alias zsh_prompt="vi ~/zsh/prompt.zsh"

alias yabai_config="vi ~/.yabairc"
alias restart_yabai="brew services restart koekeishiya/formulae/yabai"

alias skhd_config="vi ~/.skhdrc"
alias restart_skhd="brew services restart skhd"

alias sc_format_jpg="defaults write com.apple.screencapture type JPG"
alias sc_format_png="defaults write com.apple.screencapture type PNG"

alias ls='ls -G'
alias ll="ls -l"
alias l="ls -la"

alias ..="cd .."
alias ...="cd ../.."

alias my_ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias kill_dns="sudo killall -HUP mDNSResponder"
alias vi="nvim"
alias edit_host="sudo nvim /etc/hosts"
