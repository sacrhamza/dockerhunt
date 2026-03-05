GREEN='\e[32m'
RED='\e[31m'
BLUE='\e[34m'
PURPLE='\e[35m'
YELLOW='\e[33m'
RESET='\e[0m'

function get_level()
{
  echo hey
}

PS1="${PURPLE}dockerhunt ${YELLOW}in ${BLUE}\w ${GREEN}level$(get_level)\n$ ${RESET}"

alias ls='ls --color'
