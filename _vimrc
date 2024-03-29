"source $VIMRUNTIME/vimrc_example.vim

" Fix encoding for Windows' UTF-16LE files
" per https://stackoverflow.com/questions/12970395/is-it-possible-to-automatically-set-utf16-file-encoding-when-opening-a-file-of-t
" Bad idea!!! Doing this breaks any and all shell scripts edited with vim with this setting
" :set fencs=ucs-bom,utf-16le,utf-8,default,latin1
" Maybe putting the windows stupidity last will still allow editing those
:set fencs=ucs-bom,utf-8,default,latin1,utf-16le

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg1 = substitute(arg1, '!', '\!', 'g')
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg2 = substitute(arg2, '!', '\!', 'g')
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let arg3 = substitute(arg3, '!', '\!', 'g')
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      if empty(&shellxquote)
        let l:shxq_sav = ''
        set shellxquote&
      endif
      let cmd = '"' . $VIMRUNTIME . '\diff"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  let cmd = substitute(cmd, '!', '\!', 'g')
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3
  if exists('l:shxq_sav')
    let &shellxquote=l:shxq_sav
  endif
endfunction

" -------------------------------------------------------------------
" end orig _vimrc
" -------------------------------------------------------------------

set history=1000                " default was 200
set noincsearch                 " default was enabled
let g:netrw_dirhistmax=0

" the double-slash ending is not expanding (per a few blogs) to the full
" path (replacing / with %) as expected, so removing, for now.
"set backupdir=$HOME/.vimbackup//
"     
"     if has("autocmd")
"     
"       " replace default vimrcEx to increase textwidth from 78
"       autocmd! vimrcEx
"       augroup vimrcEx
"         au!
"         autocmd FileType text setlocal textwidth=105   
"         " When editing a file, always jump to the last known cursor position.
"         " Don't do it when the position is invalid or when inside an event handler
"         " (happens when dropping a file on gvim).
"         autocmd BufReadPost *
"           \ if line("'\"") >= 1 && line("'\"") <= line("$") |
"           \   exe "normal! g`\"" |
"           \ endif
"       augroup END
"     
"       augroup vimrcBex
"         set backupext=.vim~ " aka: bex
"     
"         " do before write to get latest timestamp value
"         " note: do _not_ append &bex!!!
"         au BufWritePre * let &bex = '.' . strftime("%Y%m%d%H%M%S") . '.vim~'
"       augroup END
"     
"     "   augroup localViminfo
"     "     " local viminfo filename pattern and loading
"     "     let s:baseviminfo = "'100,<50,s10,h,rA:,rB:"
"     "     " For .lvi. named files, insert filename into name of viminfo file
"     "     let s:lviviminfo = s:baseviminfo . ",n" . expand('%:t') . ".viminfo"
"     "     au BufRead *.lvi.* let &vi = s:lviviminfo
"     "     au BufRead *.viminfo let &vi = s:defaultviminfo
"     "     au BufRead *.lvi.* rv!
"     "     au VimLeavePre *.lvi.* let &vi = s:lviviminfo
"     "     au VimLeavePre *.viminfo let &vi = s:defaultviminfo
"     "     au VimLeavePre *.lvi.* wv!
"     "   augroup END
"     
"     endif " has("autocmd")

" Override whatever came from filetype indent files
set autoindent                    " always set autoindenting on
" jwarren[20210820] disabled si, it seemed to incorrectly change comment char placement (e.g., '#')
"set smartindent                   " enable smartindenting as well
set expandtab                     " Die, evil tab characters! Die!
set shiftwidth=4
set tabstop=4
set noundofile                    " get rid of the annoying .un~ files cluttering up the place
set nohlsearch

set nu                            " show line numbers
set updatecount=0                 " disable swapfile
set nofoldenable                  " disable folding

set mps+=<:>                      " add angle brakets to make html & xml easier to edit

set cursorline                    " turn on highlighting the cursor line
set cursorcolumn                  " show current column
set modeline

let do_syntax_sel_menu=1

" This must be done before setting colorscheme for the colors to be correct
"set background=dark             " making sure it's a dark background
"set background=light
let backgroundscheme=$BACKGROUND_SCHEME
if backgroundscheme == 'light'
  set background=light
"elseif backgroundscheme == 'dark'
else
  set background=dark
endif

if backgroundscheme == 'light' || backgroundscheme == 'dark'
"if &background == 'light' || &background == 'dark'
  "let g:solarized_termcolors=256
  let g:solarized_termcolors=&t_Co  " uses vim value for termcolors (should be 256)
  let g:solarized_termtrans=1       " disables changing background color
  let g:solarized_degrade=1         " uses hexcolors instead of more limited color codes
  let g:solarized_degrade=0         " uses hexcolors instead of more limited color codes

  "let g:solarized_bold=0
  "let g:solarized_underline=0
  "let g:solarized_italic=0
  let g:solarized_bold=1
  let g:solarized_underline=1
  let g:solarized_italic=1

  "let g:solarized_contrast="low"
  "let g:solarized_contrast="normal"
  let g:solarized_contrast="high"

  "let g:solarized_visibility="high"
  "let g:solarized_visibility="low"
  "let g:solarized_visibility="normal"
  let g:solarized_visibility="high"

  "set background=light
  colo solarized
else
  " Load custom colorscheme, defaulting to something close
  "try
  "  colorscheme jon
  "catch /^Vim\%((\a\+)\)\=:E185/
  "  colorscheme ron
  "endtry

  " reminder, this does change background to 'dark' and clear
  " bold, underline, and italic support
  " so, use care if changing back to this manually during a vim session
"  try
"    colorscheme elflord2
"  catch /^Vim\%((\a\+)\)\=:E185/
"    colorscheme elflord
"  endtry
  "colorscheme slate
  "colorscheme desert
  "colorscheme murphy
  "colorscheme torte
  if &background == 'light'
    colo nuvola
  else
    colorscheme murphy
  endif
endif

" vim: filetype=vim ts=2 sw=2 nobomb
