#!/usr/bin/env bash
set -e

CYAN='\033[0;36m'
YELLOW='\033[0;33m'
NC='\033[0m'

function info() {
  echo -e "${CYAN}$@${NC}" 
}

function warn() {
  echo -e "${YELLOW}$@${NC}"
}

if [[ $# -ne 1 ]]; then
  echo "Specify profile name to copy to"
  exit 1
fi

mkdir -p $1

if [ ! -f ${HOME}/.bash_profile ]; then
  warn "No .bash_profile config file, skipping..."
else
  info "Copying ${HOME}/.bash_profile to $1/.bash_profile..."
  cp "${HOME}/.bash_profile" "$1/.bash_profile"
fi

if [ ! -f ${HOME}/.zshrc ]; then
  warn "No .zshrc config file, skipping..."
else
  info "Copying ${HOME}/.zshrc to $1/.zshrc..."
  cp "${HOME}/.zshrc" "$1/.zshrc"
fi


if [ ! -f ${HOME}/.gitconfig ]; then
  warn "No .gitconfig config file, skipping..."
else
  info "Copying ${HOME}/.gitconfig to $1/.gitconfig..."
  cp "${HOME}/.gitconfig" "$1/.gitconfig"
fi

if [ ! -f ${HOME}/.config/nvim/init.vim ]; then
  warn "No ./config/nvim/init.vim config file, skipping..."
else
  info "Copying ${HOME}/.config/nvim/init.vim to $1/init.vim..."
  cp "${HOME}/.config/nvim/init.vim" "$1/init.vim"
fi
