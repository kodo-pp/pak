#!/usr/bin/env bash

function _complete_pak() {
    current="${COMP_WORDS[$COMP_CWORD]}"
    COMPREPLY=( $( compgen -W "$(pak list 2>/dev/null)" -- ${current}) )
}

complete -F _complete_pak pak 
complete -F _complete_pak pak2 
