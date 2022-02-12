#! /bin/sh

# Declare Variables
SCRIPTS_DIR=~/Projects/Personal/Scripts


copy_zsh_rc() {
  cp -r ~/.zshrc /home/joaop-oliveira/Dropbox/Projetos/Configurations
}

main() {
  copy_zsh_rc
}


main
