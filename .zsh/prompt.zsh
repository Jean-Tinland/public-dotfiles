autoload -U colors && colors

function git_branch_name() {
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="/"} {print $NF}')
  if [[ $branch != "" ]]; then
    echo "$branch"
  fi
}

function git_status() {
  if [ -d .git ] && ! git diff-index --quiet HEAD --; then
    echo "#"
  fi
}

setopt prompt_subst

function precmd() {
  if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
    NEW_LINE_BEFORE_PROMPT=1
  elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
    echo ""
  fi
}

PROMPT="%{$fg_bold[white]%}%c %{$fg_bold[white]%}%(! %{$fg_bold[cyan]%} )>%{$fg_bold[white]%}%(1j %{$fg_bold[yellow]%} )>%{$fg_bold[yellow]%}%(?  %{$fg_bold[red]%})>%{$reset_color%} "
if [ $THEME = 'light' ]; then
  PROMPT="%{$fg_bold[black]%}%c %{$fg_bold[black]%}%(! %{$fg_bold[cyan]%} )>%{$fg_bold[black]%}%(1j %{$fg_bold[yellow]%} )>%{$fg_bold[yellow]%}%(?  %{$fg_bold[red]%})>%{$reset_color%} "
fi
RPROMPT='$(git_status) $(git_branch_name)'
