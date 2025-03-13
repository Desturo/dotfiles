alias cclean='bash ~/Cleaner_42.sh'
export PATH=$HOME/.brew/bin:/Users/nschneid/software/nvim-macos-x86_64/bin:$PATH
eval "$(/Users/nschneid/software/starship/bin/starship init zsh)"

# Generated for envman. Do not edit.
[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"

alias francinette=/Users/nschneid/francinette/tester.sh

alias paco=/Users/nschneid/francinette/tester.sh
alias di="bash /Users/nschneid/.docker_valgrind_setup/init_docker.sh"
alias db="docker build -t valgrind - < /Users/nschneid/.docker_valgrind_setup/valgrind"
alias dv='docker run -ti -v $PWD:/code -v "/Users/nschneid/.docker_valgrind_setup/root":/root valgrind bash'
