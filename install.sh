#!/usr/bin/env bash

# Title: kr40's Kali Aliases
# Description: Adds useful aliases to zshrc in kali
# Author: Kartik Rao <kr40.git@gmail.com>
# Date: 2022-03-24
# Version: 1.0.0

function bannerSimple() {
  local msg="${2} ${1} ${2}"
  local edge
  edge=${msg//?/$2}
  echo "${edge}"
  echo "$(tput bold)${msg}$(tput sgr0)"
  echo "${edge}"
  echo
}

bannerSimple "kr40's Kali Aliases" "*"

echo "Creating .zsh folder in ~ (Home Directory)"

mkdir ~/.zsh/

if [[ $? == 0 ]]; then
  echo "command succeed"
fi

echo "Moving aliases to .zsh folder"

mv zsh_git ~/.zsh/

if [[ $? == 0 ]]; then
  echo "command succeed"
fi
mv zsh_myaliases ~/.zsh/

if [[ $? == 0 ]]; then
  echo "command succeed"
fi

mv zsh_nmap ~/.zsh/

if [[ $? == 0 ]]; then
  echo "command succeed"
fi

mv zsh_pentest ~/.zsh/

if [[ $? == 0 ]]; then
  echo "command succeed"
fi

mv zsh_websearch ~/.zsh/

if [[ $? == 0 ]]; then
  echo "command succeed"
fi

echo "Moved Successfully"

echo "Adding commands to source the aliases to .zshrc"

cat zsh_config >>~/.zshrc

if [[ $? == 0 ]]; then
  echo "command succeed"
fi

echo "Please install exa, rustscan and autorecon to use their aliases."
echo "Source .zshrc or restart your terminal to use the aliases."
echo "You can remove this folder if you want."
echo "Done"

exit 0
