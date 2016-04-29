set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "jon"
hi Cursor         guibg=#ffffff ctermbg=015 guifg=#000000 ctermfg=000
hi DiffAdd        guibg=#5f5fd7 ctermbg=062 guifg=#000000 ctermfg=000
hi DiffChange     guibg=#005f00 ctermbg=022 guifg=#000000 ctermfg=000
hi DiffDelete     guibg=#ff875f ctermbg=209 guifg=#000000 ctermfg=000
hi DiffText       guibg=#5f8700 ctermbg=064 guifg=#000000 ctermfg=000
hi ErrorMsg       guibg=#000000 ctermbg=000 guifg=#ffaf00 ctermfg=214
hi Folded         guibg=#ffaf00 ctermbg=214 guifg=#000000 ctermfg=000
hi FoldColumn     guibg=#767676 ctermbg=243 guifg=#000000 ctermfg=000
hi IncSearch      guibg=#ffff00 ctermbg=011 guifg=#000000 ctermfg=000
hi LineNr                                   guifg=#ff87af ctermfg=211
hi ModeMsg                                  guifg=#ffff00 ctermfg=011
hi MoreMsg                                  guifg=#ffff00 ctermfg=011
hi NonText        guibg=#1c1c1c ctermbg=234 guifg=#870000 ctermfg=088
hi Normal         guibg=#000000 ctermbg=000 guifg=#ffffff ctermfg=015
hi Search         guibg=#ffaf00 ctermbg=214 guifg=#000000 ctermfg=000
hi StatusLine     guibg=#0000d7 ctermbg=020 guifg=#d0d0d0 ctermfg=252 gui=bold      cterm=bold
hi StatusLineNC   guibg=#00005f ctermbg=017 guifg=#a8a8a8 ctermfg=248
hi Title          guibg=#ff0000 ctermbg=009 guifg=#ffffff ctermfg=015 gui=bold      cterm=bold
hi WarningMsg     guibg=#000000 ctermbg=000 guifg=#00ffff ctermfg=014 gui=bold      cterm=bold
hi Constant                                 guifg=#00ffff ctermfg=014
hi String                                   guifg=#00ffff ctermfg=014
hi Character                                guifg=#00ffff ctermfg=014
hi Number                                   guifg=#00ffff ctermfg=014
hi Boolean                                  guifg=#00ffff ctermfg=014
hi Float                                    guifg=#00ffff ctermfg=014
hi Identifier                               guifg=#00af5f ctermfg=035
hi Function                                 guifg=#00af5f ctermfg=035
hi Statement                                guifg=#ffff00 ctermfg=011
hi Conditional                              guifg=#ffff00 ctermfg=011
hi Repeat                                   guifg=#ffff00 ctermfg=011
hi Label                                    guifg=#ffff00 ctermfg=011
hi Operator                                 guifg=#ffaf00 ctermfg=214 gui=bold      cterm=bold
hi Keyword                                  guifg=#ffff00 ctermfg=011
hi Exception                                guifg=#ffff00 ctermfg=011
hi PreProc                                  guifg=#00ff00 ctermfg=010
hi Include                                  guifg=#00ff00 ctermfg=010
hi Define                                   guifg=#00ff00 ctermfg=010
hi Macro                                    guifg=#00ff00 ctermfg=010
hi PreCondit                                guifg=#00ff00 ctermfg=010
hi Type                                     guifg=#ffaf00 ctermfg=214
hi StorageClass                             guifg=#ffaf00 ctermfg=214
hi Structure                                guifg=#ffaf00 ctermfg=214
hi Typedef                                  guifg=#ffaf00 ctermfg=214
hi Special                                  guifg=#bcbcbc ctermfg=250
hi SpecialChar                              guifg=#bcbcbc ctermfg=250
hi Tag                                      guifg=#bcbcbc ctermfg=250
hi Delimiter                                guifg=#bcbcbc ctermfg=250
hi SpecialComment                           guifg=#bcbcbc ctermfg=250 gui=italic    cterm=italic
hi Debug                                    guifg=#bcbcbc ctermfg=250
hi Underlined                                                         gui=underline cterm=underline
hi Error          guibg=#000000 ctermbg=000 guifg=#ff0000 ctermfg=009 gui=undercurl cterm=underline
hi Todo           guibg=#005f5f ctermbg=023 guifg=#ffffff ctermfg=015 gui=bold      cterm=bold
hi clear CursorLine
hi clear Visual
hi clear Comment
hi CursorLine     guibg=#5f0000 ctermbg=052
hi Visual         guibg=#008787 ctermbg=030 guifg=#ffffff ctermfg=015
hi Comment                                  guifg=#a8a8a8 ctermfg=248 gui=italic    cterm=italic
