source $VIMRUNTIME/vimrc_example.vim
"set nocompatible

set smartindent
set expandtab
set shiftwidth=4
set tabstop=4

set nu              " show line numbers
set updatecount=0   " disable swapfile
set nofoldenable    " disable folding

set history=1000

" Backup filename pattern
set bex=.vim
" do before write to get latest timestamp value
" note: do _not_ append &bex!!!
au BufWritePre * let &bex = '.~' . strftime("%Y%m%d%H%M%S") . '.vim'

set mps+=<:>

" enable unicode character display
if has("multi_byte")
  if &termencoding == ""
    let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8 bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

if version >= 500
  " highlight strings inside C comments
  "let c_comment_strings=0

  " Switch on syntax highlighting if it wasn't on yet.
  if !exists("syntax_on")
    syntax on
  endif

  " Switch off search pattern highlighting.
  set nohlsearch
  set noincsearch

  " Turn on highlighting the cursor line
  set cursorline

  colorscheme jon
endif

" local viminfo filename pattern and loading
au BufRead *.lvi.* let &vi = &vi . ",n" . expand('%:t') . ".viminfo"
au BufRead *.viminfo let &vi = "'100,<50,s10,h,rA:,rB:,"
au BufRead *.lvi.* rv!
au BufWritePre *.lvi.* let &vi = &vi . ",n" . expand('%:t') . ".viminfo"
au BufWritePre *.viminfo let &vi = "'100,<50,s10,h,rA:,rB:,"
au BufWritePre *.lvi.* wv!

