#!/usr/bin/env bash
set -e

CYAN='\033[0;36m'
NC='\033[0m'

function info() {
  echo -e "${CYAN}$@${NC}" 
}

info "Copying ${HOME}/.bash_profile to $1/.bash_profile..."
cp "${HOME}/.bash_profile" "$1/.bash_profile"

info "Copying ${HOME}/.zshrc to $1/.zshrc..."
cp "${HOME}/.zshrc" "$1/.zshrc"
