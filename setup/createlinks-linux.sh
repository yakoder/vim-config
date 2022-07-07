vim_config="/cygdrive/c/dev/code/private/yakoder/vim-config"

if [[ ! -d "${vim_config}" ]]; then
    echo "Aborting..."
    echo "Directory not found: ${vim_config}"
    exit 2
fi

echo "Cleaning up any pre-existing files..."
if [[ -e "${HOME}/.gvimrc" ]]; then   rm -f "${HOME}/.gvimrc";   fi
if [[ -e "${HOME}/.vimrc" ]]; then    rm -f "${HOME}/.vimrc";    fi
if [[ -e "${HOME}/.viminfo" ]]; then  rm -f "${HOME}/.viminfo";  fi
if [[ -e "${HOME}/.vim" ]]; then      rm -f "${HOME}/.vim";      fi

echo "Creating links..."
if [[ -e "$vim_config/_gvimrc" ]]; then   ln -s "$vim_config/_gvimrc"  "${HOME}/.gvimrc";   fi
if [[ -e "$vim_config/_vimrc" ]]; then    ln -s "$vim_config/_vimrc"   "${HOME}/.vimrc";    fi
if [[ -e "$vim_config/_viminfo" ]]; then  ln    "$vim_config/_viminfo" "${HOME}/.viminfo";  fi
if [[ -e "$vim_config/vimfiles" ]]; then  ln -s "$vim_config/vimfiles" "${HOME}/.vim";      fi

