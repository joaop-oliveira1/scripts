#! /bin/sh

# Declare Variables
SCRIPTS_DIR=~/Projects/Personal/Scripts


copy_zsh_rc() {
  cp -r ~/.zshrc /home/joaop-oliveira/Dropbox/Projetos/Configurations
}


save_zshrc_in_repo() {
  git add .;
  git commit -m "Commiting from zshrc cron job" && git push
}

main() {
  copy_zsh_rc
  save_zshrc_in_repo
}


main
