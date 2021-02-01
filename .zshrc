autoload -U +X bashcompinit && bashcompinit
autoload -U +X compinit && compinit

zstyle ':completion:*' menu select

source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/functions.zsh
source $HOME/.zsh/history.zsh

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

THEME="dark" # "light"
source $HOME/.zsh/prompt.zsh
