# source this to pick up the right shell context

INSTALL_DIR=$(dirname -- "$(readlink -f -- "$0")")

set_up_vim() {
  if [[ ! -f "$HOME/.vimrc" ]]; then
    ln -s configs/vimrc $HOME/.vimrc    
    echo "linked .vimrc to configs/vimrc ✅"
  else
    echo ".vimrc already exists, skipping. ❌"
  fi
}

# debug shell
# https://stackoverflow.com/questions/60844165/definitively-determine-if-currently-running-shell-is-bash-or-zsh
# shell_name="$(ps -o comm= -p $$)"
# echo "${shell_name##*[[:cntrl:][:punct:][:space:]]}"

# -n: if not null or empty
if [ -n "$ZSH_VERSION" ]; then
  echo "Detected Zsh."
  set_up_vim
  echo "source ${INSTALL_DIR}/configs/bashrc"  >> .zshrc
  echo "Set up complete! ✅"
elif [ -n "$BASH_VERSION" ]; then
  echo "Detected Bash."
  set_up_vim
  echo "source ${INSTALL_DIR}/configs/bashrc"  >> .bashrc
  echo "Set up complete! ✅"
else
  echo "Not sure how to set up this shell. ❌"
fi
