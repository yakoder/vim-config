" Moving most of the settings here from $VIMRUNTIME/vimrc_example.vim
" -------------------------------------------------------------------

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup                    " do not keep a backup file, use versions instead
else
  set backup
  set noundofile                  " disable undo file
  set backupcopy=yes              " prevent backupcopy=auto from causing issues by always using 'yes'
endif

set ruler                         " show the cursor position all the time
set showcmd                       " display incomplete commands

set history=1000
set noincsearch                   " disable incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on when the terminal has colors or when using the
" GUI (which always has colors).
if &t_Co > 2 || has("gui_running")
  if !exists("syntax_on")         " Switch on syntax highlighting if it wasn't on yet.
    syntax on
  endif

  " Switch off search pattern highlighting.
  set nohlsearch

  let c_comment_strings=0         " Keep comments 'comment color'
endif

if has("autocmd")

  " Enable file type detection.
  filetype plugin indent on

  augroup vimrcEx
    au!
    autocmd FileType text setlocal textwidth=105   " increased from 78
    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
  augroup END

  augroup vimrcBex
    set backupext=.vim~ " aka: bex

    " do before write to get latest timestamp value
    " note: do _not_ append &bex!!!
    au BufWritePre * let &bex = '.~' . strftime("%Y%m%d%H%M%S") . '.vim~'
  augroup END

  augroup localViminfo
    " local viminfo filename pattern and loading
    let s:baseviminfo = "'100,<50,s10,h,rA:,rB:"
    " For .lvi. named files, insert filename into name of viminfo file
    let s:lviviminfo = s:baseviminfo . ",n" . expand('%:t') . ".viminfo"
    au BufRead *.lvi.* let &vi = s:lviviminfo
    au BufRead *.viminfo let &vi = s:defaultviminfo
    au BufRead *.lvi.* rv!
    au VimLeavePre *.lvi.* let &vi = s:lviviminfo
    au VimLeavePre *.viminfo let &vi = s:defaultviminfo
    au VimLeavePre *.lvi.* wv!
  augroup END

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
" Only define it when not defined already.
if !exists(":DiffOrig")
  command DiffOrig vert new | set bt=nofile | r ++edit # | 0d_ | diffthis
  \ | wincmd p | diffthis
endif

if has('langmap') && exists('+langnoremap')
  " Prevent that the langmap option applies to characters that result from a mapping.
  " If unset (default), this may break plugins (but it's backward compatible).
  set langnoremap
endif

" Add optional packages.
" The matchit plugin makes the % command work better, but it is not backwards compatible.
silent! packadd matchit

" enable unicode character display
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8 bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

" Override whatever came from filetype indent files
set autoindent                    " always set autoindenting on
set smartindent                   " enable smartindenting as well
set expandtab                     " Die, evil tab characters! Die!
set shiftwidth=2
set tabstop=2

set nu                            " show line numbers
set updatecount=0                 " disable swapfile
set nofoldenable                  " disable folding

set mps+=<:>                      " add angle brakets to make html & xml easier to edit

set cursorline                    " turn on highlighting the cursor line
set cursorcolumn                  " show current column

" Load custom colorscheme, defaulting to something close
try
  colorscheme jon
  "colorscheme jon2               " version w/o cterm=italic
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme ron
endtry

