# EGG HEAD
function prompt_char {
    # use this to set different chars for each type of repo
    git branch >/dev/null 2>/dev/null && echo '❂' && return
    hg root >/dev/null 2>/dev/null && echo '☂' && return
    echo '๏'
}


PROMPT='
%{$fg[green]%}%n@%m%{$reset_color%}: %{$fg_bold[magenta]%}${PWD/#$HOME/~}%{$reset_color%}$(git_prompt_info)%{$fg_bold[cyan]%}
๏ %{$reset_color%}'
#PS2=$' %{$fg[red]%}|>%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
