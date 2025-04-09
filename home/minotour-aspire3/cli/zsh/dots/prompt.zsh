parse_git_branch() {
    local branch=""
    branch=$(git symbolic-ref --short HEAD 2> /dev/null)
    local git_status=$(git status --porcelain 2> /dev/null)
    local color=green
    
    if echo "$git_status" | grep -q "^ M"; then
        color=yellow
        branch="${branch}*"
    fi

    if echo "$git_status" | grep -qE "^ A|^\?\?"; then
        color=yellow
        branch="${branch}+"
    fi

    if echo "$git_status" | grep -q "^ D"; then
                        color=yellow
                        branch="${branch}-"
    fi

    if [[ -n "$branch" ]]; then
        branch=(%F{${color}}${branch}%f)
    fi

    echo "$branch"
}

virenv() {
    [ $VIRTUAL_ENV ] && echo '%F{#8889CC}'`basename $VIRTUAL_ENV`'%f '
}

update_prompt() {    
    PS1="%F{#CCAA87}%n@%m%f %F{blue}%~%f $(virenv)$(parse_git_branch) "$'\n'"%(?.%F{green}%B>%b.%F{red}>) %f"
    RPS1='%(?..%F{red}[%?]%f) %F{239}%t%f'
}

precmd_functions+=(update_prompt)
update_prompt
