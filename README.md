# vim-config
My vim config files

- '.vimrc` Unix-based Vim config
  + put in user home directory
- '_vimrc` Unix-based Vim config (hard-linked to `.vimrc`)
  + put in main install location, e.g., "C:\Program Files (x86)\Vim"
- `.gvimrc` Unix-based GVim config
  + put in user home directory
- `_gvimrc` Windows-based GVim config (hard-linked to `.gvimrc`)
  + put in main install location, e.g., "C:\Program Files (x86)\Vim"
- `vimfiles` Windows-based directory for additional files
  + put in main install location, e.g., "C:\Program Files (x86)\Vim"
- `.vim` Unix-based directory for additional files (symlinked to `vimfiles`)
  + put in user home directory
- `vim.sh` Bash script for cleaning up the backup files, if desired
  + put in user home bin directory (or whereever that's on the path)

