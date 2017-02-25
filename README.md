# vim-config
My vim config files

## Files
- [`.vimrc`](.vimrc) Unix-based Vim config
  + put in user home directory
- [`_vimrc`](_vimrc) Unix-based Vim config (hard-linked to `.vimrc`)
  + put in main install location, e.g., "C:\Program Files (x86)\Vim"
- [`.gvimrc`](.gvimrc) Unix-based GVim config
  + put in user home directory
- [`_gvimrc`](_gvimrc) Windows-based GVim config (hard-linked to `.gvimrc`)
  + put in main install location, e.g., "C:\Program Files (x86)\Vim"
- [`vimfiles`](vimfiles) Windows-based directory for additional files
  + put in main install location, e.g., "C:\Program Files (x86)\Vim"
  + contains my custom themes
- [`.vim`](vimfiles) Unix-based directory for additional files (symlinked to `vimfiles`)
  + put files (not symlink) in `.vim` folder under user home directory
- [`vm.sh`](vm.sh) Bash script for cleaning up the backup files, if desired
  + put in user home bin directory (or whereever that's on the path)
  + Note: This currently does not handle paths that contain spaces. I'll try to fix when I have time.

