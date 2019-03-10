#!/usr/bin/env bash
set -e

CYAN='\033[0;36m'
NC='\033[0m'

function info() {
  echo -e "${CYAN}$@${NC}" 
}

if [[ $# -ne 1 ]]; then
  echo "Specify profile name to copy to"
  exit 1
fi

info "Copying ${HOME}/.bash_profile to $1/.bash_profile..."
cp "${HOME}/.bash_profile" "$1/.bash_profile"

info "Copying ${HOME}/.zshrc to $1/.zshrc..."
cp "${HOME}/.zshrc" "$1/.zshrc"

info "Copying ${HOME}/.gitconfig to $1/.gitconfig..."
cp "${HOME}/.gitconfig" "$1/.gitconfig"

info "Copying ${HOME}/.config/nvim/init.vim to $1/init.vim..."
cp "${HOME}/.config/nvim/init.vim" "$1/init.vim"
