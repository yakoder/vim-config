" local syntax file - set colors on a per-machine basis:
" vim: ts=2 sw=2 nobomb et
" Vim color file
" Maintainer:    Ron Aaron <ron@ronware.org>
" Last Change:    2003 May 02

set background=dark
hi clear
" clear doesn't actually clear; clear resets to defaults; so actually CLEAR the colors
hi Normal       NONE
hi CursorLine   NONE
hi CursorColumn NONE
hi Comment      NONE
hi Constant     NONE
hi Special      NONE
hi Identifier   NONE
hi Statement    NONE
hi PreProc      NONE
hi Type         NONE
hi Function     NONE
hi Repeat       NONE
hi Operator     NONE
hi Ignore       NONE
hi Error        NONE
hi Todo         NONE
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "elflord2"
"hi Normal                                 ctermfg=Cyan        ctermbg=Black
"hi CursorLine   term=none      cterm=none                     ctermbg=233                           guibg=#121212
"hi CursorColumn term=none                                     ctermbg=233                           guibg=#121212
"hi Comment      term=bold                 ctermfg=DarkCyan                            guifg=#80a0ff
"hi Constant     term=underline            ctermfg=Magenta                             guifg=Magenta
"hi Special      term=bold                 ctermfg=DarkMagenta                         guifg=Red
"hi Identifier   term=underline cterm=bold ctermfg=Cyan                                guifg=#40ffff
"hi Statement    term=bold                 ctermfg=Yellow                     gui=bold guifg=#aa4444
"hi PreProc      term=underline            ctermfg=LightBlue                           guifg=#ff80ff
"hi Type         term=underline            ctermfg=LightGreen                 gui=bold guifg=#60ff60
"hi Function     term=bold                 ctermfg=White                               guifg=White
"hi Repeat       term=underline            ctermfg=White                               guifg=White
"hi Operator                               ctermfg=Red                                 guifg=Red
"hi Ignore                                 ctermfg=Black                               guifg=bg
"hi Error        term=none                                     ctermbg=Red                           guibg=Red
"hi Todo         term=reverse                                  ctermbg=Yellow                        guibg=Yellow
"hi Normal ctermfg=Cyan
"hi Comment ctermbg=Yellow ctermfg=Black
"hi Todo ctermbg=Yellow guibg=Yellow
"hi CursorLine term=reverse ctermfg=cyan ctermbg=233
hi CursorLine ctermbg=233

" Common groups that link to default highlighting.
" You can specify other highlighting easily.
"hi link String          Constant
"hi link Character       Constant
"hi link Number          Constant
"hi link Boolean         Constant
"hi link Float           Number
"hi link Conditional     Repeat
"hi link Label           Statement
"hi link Keyword         Statement
"hi link Exception       Statement
"hi link Include         PreProc
"hi link Define          PreProc
"hi link Macro           PreProc
"hi link PreCondit       PreProc
"hi link StorageClass    Type
"hi link Structure       Type
"hi link Typedef         Type
"hi link Tag             Special
"hi link SpecialChar     Special
"hi link Delimiter       Special
"hi link SpecialComment  Special
"hi link Debug           Special

