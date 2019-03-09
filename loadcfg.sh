#!/usr/bin/env bash
set -e

CYAN='\033[0;36m'
NC='\033[0m'

function info() {
  echo -e "${CYAN}$@${NC}" 
}

info "Restoring $1/.bash_profile to ${HOME}/.bash_profile..."
cp "$1/.bash_profile" "${HOME}/.bash_profile"

info "Restoring $1/.zshrc ${HOME}/.zshrc to $1/.zshrc..."
cp "$1/.zshrc" "${HOME}/.zshrc"

info "Restoring $1/.vimconfig to sdafasfsa"
