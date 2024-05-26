#!/usr/bin/env zsh

autoload -Uz add-zsh-hook

MOMMY_RESPONSE_TYPES=(POSITIVE NEGATIVE)
POSITIVE_RESPONSES=(
    "youre such a smart cookie ❤"
    "mommy thinks her little pookie bear has earned a big hug ❤"
    "good boy! mommy is proud of you ❤"
    "mommy knew you could do it! ❤"
    "*pets head*"
    "you make mommy so happy ❤"
    "mommy loves her little genius ❤"
    "*snuggles you close*"
    "you did such a great job, sweetie! ❤"
    "*kisses your forehead*"
    "yay! you got it! ❤" 
)

NEGATIVE_RESPONSES=(
    "mommy believes in you! ❤"
    "do you need my help?"
    "mommy will love you no matter what! ❤"
    "i know my little pookie bear can do better! ❤"
    "just a litte further, sweetie! ❤"
    "lets try again ❤"
    "mommy is here to help you get through this ❤"
    "mommy knows you can do it! ❤"
)

add-zsh-hook precmd mommy
add-zsh-hook precmd error_counter

ERROR_COUNT=0
function error_counter() {
    if [ $? -ne 0 ]; then
        ((ERROR_COUNT++))
    else
        ((ERROR_COUNT--))
    fi
}

function mommy() {
    local command_status=${1:-$?}
    local response_type_index=$((command_status == 0 ? 1 : 2))

    local response

    if [[ $ERROR_COUNT -ge 3 ]]; then
        ERROR_COUNT=0
        echo "\033[38;2;255;158;171m${NEGATIVE_RESPONSES[$((RANDOM % ${#NEGATIVE_RESPONSES[@]}))]}"
    fi
    
    if [[ $ERROR_COUNT -eq -3 ]]; then
        echo "\033[38;2;255;158;171m${POSITIVE_RESPONSES[$((RANDOM % ${#POSITIVE_RESPONSES[@]}))]}"
        ERROR_COUNT=0
    fi
}
