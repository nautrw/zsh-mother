#!/usr/bin/env zsh

autoload -Uz add-zsh-hook

MOMMY_RESPONSE_TYPES=(POSITIVE NEGATIVE)
POSITIVE_RESPONSES=(
    $'you\'re such a smart cookie ❤'
    "mommy thinks her little pookie bear has earned a big hug ❤"
    "good boy! mommy's proud of you ❤"
    "mommy knew you could do it!"
    "*pets head*"
    "you make mommy so happy ❤"
    "mommy loves her little genius ❤"
    "*snuggles you close*"
    "you did such a great job, sweetie! ❤"
    "*kisses your forehead*"  
    "yay! you got it!" 
)

NEGATIVE_RESPONSES=(
    "mommy believes in you! ❤"
    "do you need my help?"
    "mommy will love you no matter what!"
    "i know my little pookie bear can do better! ❤"
    "just a litte further, sweetie! ❤"
    "let's try again ❤"
    "mommy is here to help you get through this ❤"
    "mommy knows you can do it!"
)

RUN_MOMMY_AFTER_EVERY_COMMAND=true
MOMMY_RESPONSE_COLOR=(255 158 171)

function mommy_response() {
    local success=$?  # Get the exit status of the last command
    local color=$'%{\e[38;2;'${MOMMY_RESPONSE_COLOR[1]}';'${MOMMY_RESPONSE_COLOR[2]}';'${MOMMY_RESPONSE_COLOR[3]}'m%}'
    local reset_color=$'%{\e[0m%}'

    if [[ $success -eq 0 ]]; then
        response="${POSITIVE_RESPONSES[$((RANDOM % ${#POSITIVE_RESPONSES[@]}))]}"
    else
        response="${NEGATIVE_RESPONSES[$((RANDOM % ${#NEGATIVE_RESPONSES[@]}))]}"
    fi

    if [[ $RUN_MOMMY_AFTER_EVERY_COMMAND == true ]]; then
        print -P "${color}${response}${reset_color}"
    fi
}

add-zsh-hook precmd mommy_response