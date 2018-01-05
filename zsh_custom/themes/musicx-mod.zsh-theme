#!/usr/bin/env zsh

if [[ "$USER" == "root" ]]; then 
    MX_PROMPT_COLOR=blue
else
    MX_PROMPT_COLOR=red
fi

function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || echo $HOST
}

function check_user_prompt_info() {
    local mx_box_name=""
    if [[ "$(box_name)" == "local" ]]; then
        mx_box_name=""
    else
        mx_box_name="%{$fg[blue]%}$(box_name)%{$reset_color%} "
    fi
    if [[ "$USER" != "musicx" ]]; then
        if [[ "$USER" == "root" ]]; then 
            echo "%{$fg_bold[red]%}%n%{$reset_color%} $mx_box_name"
        else
            echo "%{$fg_bold[green]%}%n%{$reset_color%} $mx_box_name"
        fi
    else 
        echo "$mx_box_name"
    fi
}

# Git sometimes goes into a detached head state. git_prompt_info doesn't
# return anything in this case. So wrap it in another function and check
# for an empty string.
function check_git_prompt_info() {
    if git rev-parse --git-dir > /dev/null 2>&1; then
        if [[ -z $(git_prompt_info) ]]; then
            echo "%{$fg[magenta]%}[%{$reset_color%}%{$fg_bold[magenta]%}detached-head%{$reset_color%} $(git_prompt_status)%{$reset_color%}%{$fg[magenta]%}]%{$reset_color%} %{$fg_bold[$MX_PROMPT_COLOR]%}➜ "
        else
            echo "%{$fg[blue]%}[%{$reset_color%}$(git_prompt_info) $(git_prompt_status)%{$reset_color%}%{$fg[blue]%}]%{$reset_color%} %{$fg_bold[$MX_PROMPT_COLOR]%}➜ "
        fi
    else
        echo "%{$fg_bold[$MX_PROMPT_COLOR]%}➜ "
    fi
}

function get_right_prompt() {
    # if git rev-parse --git-dir > /dev/null 2>&1; then
        # echo -n "$(git_prompt_short_sha)%{$fg[red]%}[%*]%{$reset_color%}"
    # else
        # echo -n "%{$fg[red]%}[%*]%{$reset_color%}"
    # fi
    [[ $(jobs -l | wc -l) -gt 0 ]] && echo -n " %{$fg_bold[blue]%}♨%{$reset_color%}"
}

PROMPT='$(check_user_prompt_info)\
$(check_git_prompt_info)\
%{$reset_color%}'

RPROMPT='%(?,,%{$fg_bold[red]%}● )\
%{$fg_bold[yellow]%}[%~]%{$reset_color%}\
$(get_right_prompt) %{$fg[cyan]%}[%T]%{$reset_color%}'

# Format for git_prompt_info()
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}⭠ "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%} ✔"

# Format for git_prompt_status()
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg_bold[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg_bold[blue]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg_bold[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg_bold[cyan]%}*"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg_bold[yellow]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg_bold[magenta]%}?"
ZSH_THEME_GIT_PROMPT_EQUAL_REMOTE="%{$fg_bold[green]%}="
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[yellow]%}>"
ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_bold[yellow]%}<"
# ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[yellow]%}⬆"
# ZSH_THEME_GIT_PROMPT_BEHIND="%{$fg_bold[yellow]%}⬇"
ZSH_THEME_GIT_PROMPT_DIVERGED="%{$fg_bold[red]%}⥮"
ZSH_THEME_GIT_PROMPT_STASHED="%{$fg_bold[black]%}✭"

# Format for git_prompt_ahead()
# ZSH_THEME_GIT_PROMPT_AHEAD=" %{$fg_bold[white]%}^"

# Format for git_prompt_long_sha() and git_prompt_short_sha()
# ZSH_THEME_GIT_PROMPT_SHA_BEFORE=" %{$fg_bold[white]%}[%{$fg_bold[blue]%}"
# ZSH_THEME_GIT_PROMPT_SHA_AFTER="%{$fg_bold[white]%}]"
