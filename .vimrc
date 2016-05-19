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
set bex=.vim~
" do before write to get latest timestamp value
" note: do _not_ append &bex!!!
au BufWritePre * let &bex = '.~' . strftime("%Y%m%d%H%M%S") . '.vim~'

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
let s:baseviminfo = "'100,<50,s10,h,rA:,rB:"
" For .lvi. named files, insert filename into name of viminfo file
let s:lviviminfo = s:baseviminfo . ",n" . expand('%:t') . ".viminfo"
au BufRead *.lvi.* let &vi = s:lviviminfo
au BufRead *.viminfo let &vi = s:defaultviminfo
au BufRead *.lvi.* rv!
au VimLeavePre *.lvi.* let &vi = s:lviviminfo
au VimLeavePre *.viminfo let &vi = s:defaultviminfo
au VimLeavePre *.lvi.* wv!

