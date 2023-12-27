
#Aliases
alias pcu='sudo pacman -Syu'
alias pcs="sudo pacman -Syu"
alias pcr="pacman -Qtdq | sudo pacman -Rns -"

alias rr="ranger"
alias tt="tmux"

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias cc="clear"
alias qq="exit"

alias th="touch"
alias rf="rm -rf"


if status is-interactive
    # Commands to run in interactive sessions can go here
end
