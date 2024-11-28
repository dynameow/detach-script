
# Detach script completion
_detach() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    local prev=${COMP_WORDS[COMP_CWORD-1]}

    if [ $COMP_CWORD -eq 1 ]; then
        COMPREPLY=( $(compgen -c -- "$cur") )
    else
        COMPREPLY=()
    fi
}

complete -o default -F _detach detach

