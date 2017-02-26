" My customized vim colors, based on multiple source:
"   - vim help files
"   - ron.vim colorscheme (vim install)
"   - one-dark.vim colorscheme (https://github.com/patrickw276/one-dark.vim)
" TODO: update/check all cterm colors
"
" Colors, from one-dark theme adjusted for cterm color availability:
" Mono  1 (default)  #abb2bf --> #afafd7(146)
" Mono  2 (unused)   #828997 --> #8787af(103)
" Mono  3 (comments) #5c6370 --> #5f5f87(060)
"
" Cyan               #56b6c2 --> #5fafd7(074)
" Blue               #61afef --> #5fafff(075)
" Purple             #c678dd --> #af87d7(140)
" Green              #98c379 --> #87af87(108)
" Red 1              #e06c75 --> #d75f87(168)
" Red 2              #be5046 --> #af5f5f(131)
" Orange 1           #d19a66 --> #d7875f(173)
" Orange 2           #e5c07b --> #dfaf87(180)
" Blue (accent)      #528bff --> #5f87ff(069)
"
" Dark (background)  #282c34 --> #1c1c1c(234)
"
" Other from one-dark.vim, not from one-dark/colors.less
" Mono  4            #4b5262 --> #4e4e4e(239)
" Mono  5            #3e4451 --> #3a3a3a(237)
" Mono  6            #9da5b4 --> #9e9e9e(247)
" Mono  7            #3c4049 --> #3a3a3a(237)
" Mono  8            #21252b --> #262626(235)
" Mono  9            #181a1f --> #1c1c1c(234)
" Mono 10            #353b45 --> #303030(236)
" Mono 11            #23262d --> #262626(235)
" Mono 12            #3a3f4b --> #3a3a3a(237)
" Mono 13            #d7d8db --> #dadada(253)
" Diff Add           #c1f0c1 --> #afffaf(157)
" Diff Change        #f0f0c1 --> #ffffdf(230)

set background=dark
hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "jon"

"
" *highlight-groups* *highlight-default*
" ...................................................................
" Normal          normal text
hi Normal         guibg=#1c1c1c ctermbg=234 guifg=#afafd7 ctermfg=146
" NonText         '~' and '@' at the end of the window, characters from 'showbreak' and other characters
"                 that do not really exist in the text (e.g., '>' displayed when a double-wide character
"                 doesn't fit at the end of the line).
hi NonText        guibg=#000000 ctermbg=000 guifg=#1c1c1c ctermfg=234
" LineNr          Line number for \":number\" and \":#\" commands, and when 'number' or 'relativenumber'
"                 option is set.
hi LineNr         guibg=#000000 ctermbg=000 guifg=#4e4e4e ctermfg=239

" Cursor          the character under the cursor
hi Cursor         guibg=#ffffff ctermbg=015 guifg=#000000 ctermfg=000
" CursorIM        like Cursor, but used when in IME mode
hi CursorIM       guibg=#ffffff ctermbg=015 guifg=#000000 ctermfg=000
" CursorLine      the screen line that the cursor is in when 'cursorline' is set
hi CursorLine     guibg=#121212 ctermbg=233                           gui=NONE      cterm=NONE
" CursorColumn    the screen column that the cursor is in when 'cursorcolumn' is set
hi CursorColumn   guibg=#121212 ctermbg=233
" ColorColumn     used for the columns set with 'colorcolumn'
hi ColorColumn    guibg=#3a3a3a ctermbg=237
" CursorLineNr    Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
hi CursorLineNr                             guifg=#afafd7 ctermfg=146 gui=NONE

" Visual          Visual mode selection
hi clear Visual
"TODO: guifg=#c6c6c6 ctermfg=251
hi Visual         guibg=#3a3a3a ctermbg=237

" Title           titles for output from \":set all\", \":autocmd\" etc.
"TODO: guibg=#ff0000 ctermbg=009
hi Title                                    guifg=#9e9e9e ctermfg=247 gui=bold      cterm=bold

" ModeMsg         'showmode' message (e.g., \"-- INSERT --\")
" MoreMsg         |more-prompt|
"TODO: update for one-dark
hi ModeMsg                                  guifg=#ffff00 ctermfg=011
hi MoreMsg                                  guifg=#ffff00 ctermfg=011

" Search          Last search pattern highlighting (see 'hlsearch').
"                 Also used for highlighting the current line in the quickfix window and similar items
"                 that need to stand out.
hi clear Search
"TODO: guifg=#875fff ctermfg=099
"TODO: guifg=NONE
hi Search         guibg=#3a3a3a ctermbg=237                           gui=standout
" IncSearch       'incsearch' highlighting; also used for the text replaced with \":s///c\"
hi clear IncSearch
"TODO: update for one-dark
hi IncSearch                                guifg=#875fff ctermfg=099 gui=underline
" StatusLine      status line of current window
hi StatusLine     guibg=#000000 ctermbg=000 guifg=#9e9e9e ctermfg=247 gui=bold      cterm=bold
" StatusLineNC    status lines of not-current windows
"                 Note\: if this is equal to \"StatusLine\" Vim will use \"^^^\" in the status line of
"                 the current window.
hi StatusLineNC   guibg=#000000 ctermbg=000 guifg=#9e9e9e ctermfg=247 gui=italic    cterm=italic

" WarningMsg      warning messages
hi clear WarningMsg
hi WarningMsg                               guifg=#dfaf87 ctermfg=180
" ErrorMsg        error messages on the command line
hi clear ErrorMsg
hi ErrorMsg                                 guifg=#af5f5f ctermfg=131 gui=bold      cterm=bold

" DiffAdd         diff mode: Added line
" DiffChange      diff mode: Changed line
" DiffDelete      diff mode: Deleted line
" DiffText        diff mode: Changed text within a changed line
" guifg=#000000 ctermfg=000
hi DiffAdd        guibg=#afffaf ctermbg=157
" guifg=#000000 ctermfg=000
hi DiffChange     guibg=#ffffdf ctermbg=230
"TODO: guibg=#ff875f ctermbg=209 guifg=#000000 ctermfg=000
hi DiffDelete     guibg=NONE                guifg=#1c1c1c ctermfg=234
" guifg=#000000 ctermfg=000
hi DiffText       guibg=#870000 ctermbg=088

" Folded          line used for closed folds
" FoldColumn      'foldcolumn'
"TODO: guibg=#ffaf00 ctermbg=214 guifg=#000000 ctermfg=000
hi Folded         guibg=NONE                guifg=NONE
"TODO: guibg=#767676 ctermbg=243 guifg=#000000 ctermfg=000
hi FoldColumn     guibg=NONE                guifg=NONE

"
" *group-name* *{group-name}* *E669* *W18*
" ...................................................................

" *Comment        any comment
hi Comment                                  guifg=#5f5f87 ctermfg=060 gui=italic    cterm=italic

" *Constant       any constant
"  String         a string constant: \"this is a string\"
"  Character      a character constant: 'c', '\n'
"  Number         a number constant: 234, 0xff
"  Boolean        a boolean constant: TRUE, false
"  Float          a floating point constant: 2.3e10
hi Constant                                 guifg=#d7875f ctermfg=173
hi String                                   guifg=#87af87 ctermfg=108
hi Character                                guifg=#87af87 ctermfg=108
hi Number                                   guifg=#d7875f ctermfg=173
hi Boolean                                  guifg=#d7875f ctermfg=173
hi Float                                    guifg=#d7875f ctermfg=173

" *Identifier     any variable name
"  Function       function name (also: methods for classes)
hi Identifier                               guifg=#d75f87 ctermfg=168
hi Function                                 guifg=#5fafff ctermfg=075

" *Statement      any statement
"  Conditional    if, then, else, endif, switch, etc.
"  Repeat         for, do, while, etc.
"  Label          case, default, etc.
"  Operator       \"sizeof\", \"+\", \"*\", etc.
"  Keyword        any other keyword
"  Exception      try, catch, throw
hi Statement                                guifg=#af87d7 ctermfg=140 gui=NONE
hi Conditional                              guifg=#af87d7 ctermfg=140
hi Repeat                                   guifg=#af87d7 ctermfg=140
hi Label                                    guifg=#af87d7 ctermfg=140
hi Operator                                 guifg=#afafd7 ctermfg=146 gui=bold      cterm=bold
hi Keyword                                  guifg=#af87d7 ctermfg=140
hi Exception                                guifg=#afafd7 ctermfg=146

" *PreProc        generic Preprocessor
"  Include        preprocessor #include
"  Define         preprocessor #define
"  Macro          same as Define
"  PreCondit      preprocessor #if, #else, #endif, etc.
hi PreProc                                  guifg=#d7875f ctermfg=173
hi Include                                  guifg=#af87d7 ctermfg=140
hi Define                                   guifg=#af87d7 ctermfg=140
hi Macro                                    guifg=#af87d7 ctermfg=140
hi PreCondit                                guifg=#af87d7 ctermfg=140

" *Type           int, long, char, etc.
"  StorageClass   static, register, volatile, etc.
"  Structure      struct, union, enum, etc.
"  Typedef        A typedef
hi Type                                     guifg=#af87d7 ctermfg=140
hi StorageClass                             guifg=#af87d7 ctermfg=140
hi Structure                                guifg=#af87d7 ctermfg=140
hi Typedef                                  guifg=#af87d7 ctermfg=140

" *Special        any special symbol
"  SpecialChar    special character in a constant
"  Tag            you can use CTRL-] on this
"  Delimiter      character that needs attention
"  SpecialComment special things inside a comment
"  Debug          debugging statements
hi Special                                  guifg=#d75f87 ctermfg=168
hi SpecialChar                              guifg=#5fafd7 ctermfg=074
hi Tag                                      guifg=#d75f87 ctermfg=168
hi Delimiter                                guifg=#afafd7 ctermfg=146
hi SpecialComment                           guifg=#d75f87 ctermfg=168 gui=italic    cterm=italic
hi Debug                                    guifg=#d75f87 ctermfg=168

" *Underlined     text that stands out, HTML links
hi Underlined                                                         gui=underline cterm=underline

" *Ignore         left blank, hidden

" *Error          any erroneous construct
hi Error          guibg=#000000 ctermbg=000 guifg=#ff0000 ctermfg=009 gui=undercurl cterm=underline

" *Todo           anything that needs extra attention; mostly the keywords TODO FIXME and XXX
hi Todo           guibg=#1c1c1c ctermbg=234 guifg=#af87d7 ctermfg=140 gui=bold      cterm=bold

" Conceal         placeholder characters substituted for concealed text (see 'conceallevel')
" Directory       directory names (and other special names in listings)
" VertSplit       the column separating vertically split windows
" SignColumn      column where |signs| are displayed
" MatchParen      The character under the cursor or just before it, if it is a paired bracket, and its
"                 match.
hi Directory                                guifg=#5fafff ctermfg=075
hi VertSplit      guibg=#262626 ctermbg=235 guifg=#1c1c1c ctermfg=234 gui=NONE
hi SignColumn     guibg=NONE
hi MatchParen     guibg=#303030 ctermbg=236                           gui=underline

" Pmenu           Popup menu: normal item.
" PmenuSel        Popup menu: selected item.
" PmenuSbar       Popup menu: scrollbar.
" PmenuThumb      Popup menu: Thumb of the scrollbar.
" WildMenu        current match in 'wildmenu' completion
hi Pmenu          guibg=#262626 ctermbg=235 guifg=#afafd7 ctermfg=146
hi PmenuSel       guibg=#3a3a3a ctermbg=237 guifg=#dadada ctermfg=253

" Question        prompt and yes/no questions
hi Question                                 guifg=#87af87 ctermfg=108

" SpecialKey      Meta and special keys listed with \":map\", also for text used to show unprintable
"                 characters in the text, 'listchars'.
"                 Generally\: text that is displayed differently from what it really is.
hi SpecialKey                               guifg=#5f87ff ctermfg=069

" SpellBad        Word that is not recognized by the spellchecker.
"                 This will be combined with the highlighting used otherwise.
" SpellCap        Word that should start with a capital.
"                 This will be combined with the highlighting used otherwise.
" SpellLocal      Word that is recognized by the spellchecker as one that is used in another region.
"                 This will be combined with the highlighting used otherwise.
" SpellRare       Word that is recognized by the spellchecker as one that is hardly ever used.
"                 This will be combined with the highlighting used otherwise.

" TabLine         tab pages line, not active tab page label
" TabLineFill     tab pages line, where there are no labels
" TabLineSel      tab pages line, active tab page label
hi TabLine        guibg=#262626 ctermbg=235 guifg=#9e9e9e ctermfg=247 gui=NONE
"TODO: bg==fg, this desired?
hi TabLineFill    guibg=#262626 ctermbg=235 guifg=#262626 ctermbg=235
hi TabLineSel                                                         gui=NONE              

" VisualNOS       Visual mode selection when vim is \"Not Owning the Selection\".
"                 Only X11 Gui's |gui-x11| and |xterm-clipboard| supports this.

