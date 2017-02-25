" Gvim color file
"
" mono1: #DEE2F7 default text
" mono2: #939ABD (unused)
" mono3: #63677E comments
"
" Cyan #7BE2F9
" Blue #80BBFE
" Purple #E19EF5
" Green #A3EEA0
" Red1 #F9867B
" Red2 #CF8191 (unused)
" Orange 1 #EDDC96
" Orange 2 #FDCE68 (unused)
" Blue (accent #8599FF)
"
" Background #31343F

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "one-dark-vivid"

" TODO get vim cursor color to work correctly

hi Normal       guifg=#DEE2F7 guibg=#31343F
hi Comment      guifg='#63677E'                 gui=italic ctermfg=008
hi Constant     guifg='#EDDC96'                            ctermfg=011
hi Identifier   guifg='#F9867B'                            ctermfg=009
hi Statement    guifg='#E19EF5'                 gui=NONE   ctermfg=013
hi PreProc      guifg='#EDDC96'                            ctermfg=011
hi Type         guifg='#E19EF5'                 gui=NONE   ctermfg=013
hi Special      guifg='#F9867B'                            ctermfg=009

hi Number       guifg='#EDDC96'                            ctermfg=011
hi Float        guifg='#EDDC96'                            ctermfg=011

hi Visual                       guibg='#3e4451'
hi NonText      guifg='#31343F'
hi Delimiter    guifg='#DEE2F7'
hi LineNr       guifg='#4B5262'
hi CursorLineNr guifg='#DEE2F7' gui=NONE
hi CursorLine   guibg='#2C323B'
hi Todo         guifg='#E19EF5' guibg='#31343F' gui=italic
hi Paren        guifg='#DEE2F7'
hi MatchParen                   guibg='#353b45' gui=underline
hi Directory    guifg='#80BBFE'
hi Search       guifg=NONE      guibg='#3E4451'
hi Question     guifg='#A3EEA0'
hi SpecialKey   guifg='#8599FF'

hi Folded       guifg=NONE      guibg=NONE     gui=italic
hi FoldColumn   guifg=NONE      guibg=NONE
hi SignColumn                   guibg=NONE

" status bar
hi Statusline   guifg='#9DA5B4' guibg='#21252b' gui=NONE
hi StatuslineNC guifg='#21252b' guibg='#9DA5B4'

" tab line
hi tablinefill  guifg='#21252b' guibg='#21252b'
hi Tabline      guifg='#9da5b4' guibg='#21252b' gui=NONE
hi tablinesel                                   gui=NONE
hi title        guifg='#9da5b4'                 gui=NONE

hi VertSplit    guifg='#181a1f' guibg='#21252b' gui=NONE
hi ColorColumn  guibg='#3c4049'

hi Pmenu        guifg='#DEE2F7' guibg='#23262d'
hi PmenuSel     guifg='#d7d8db' guibg='#3a3f4b'

hi Include      guifg='#E19EF5'
hi Macro        guifg='#E19EF5'
hi Structure    guifg='#E19EF5'
hi String       guifg='#A3EEA0'
hi Character    guifg='#A3EEA0'
hi Function     guifg='#80BBFE'
hi Operator     guifg='#DEE2F7'
hi Conditional  guifg='#E19EF5'
hi Keyword      guifg='#E19EF5'
hi StorageClass guifg='#E19EF5'
hi SpecialChar  guifg='#7BE2F9'
hi Repeat       guifg='#E19EF5'

hi cppType      guifg='#E19EF5'
hi cIncluded    guifg='#A3EEA0'
hi cDefineVar   guifg='#80BBFE'

hi vimVar       guifg=#7BE2F9

" ----
" diff
" ----
" TODO this section needs work
" completely new text
hi DiffAdd      guibg=#c1f0c1
" empty space
hi DiffDelete   guifg=#31343F guibg=NONE
" new whitespace?
hi DiffChange   guibg=#f0f0c1

hi DiffText     guibg=#990000

" -------
" Neomake
" -------
hi NeomakeWarningSign guifg=#cc8533
hi NeomakeErrorSign   guifg=#d92626

" ---------
" GitGutter
" ---------
hi GitGutterAdd          guifg=#388E67
hi GitGutterChange       guifg=#968564
hi GitGutterChangeDelete guifg=#968564
hi GitGutterDelete       guifg=#964245
