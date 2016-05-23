" NOTE: Optimized for Windows GVim or Vim in xterm-256color terminals
"       e.g., looks bad in xterm terminals

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "jon2"

"
" *highlight-groups* *highlight-default*
" ...................................................................
" Normal          normal text
hi Normal         guibg=#1c1c1c ctermbg=234 guifg=#eeeeee ctermfg=255
" NonText         '~' and '@' at the end of the window, characters from 'showbreak' and other characters
"                 that do not really exist in the text (e.g., '>' displayed when a double-wide character
"                 doesn't fit at the end of the line).
hi NonText        guibg=#000000 ctermbg=000 guifg=#4e4e4e ctermfg=239
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

" Visual          Visual mode selection
hi clear Visual
hi Visual         guibg=#5f0000 ctermbg=052 guifg=#c6c6c6 ctermfg=251

" Title           titles for output from \":set all\", \":autocmd\" etc.
hi Title          guibg=#ff0000 ctermbg=009 guifg=#ffffff ctermfg=015 gui=bold      cterm=bold

" ModeMsg         'showmode' message (e.g., \"-- INSERT --\")
" MoreMsg         |more-prompt|
hi ModeMsg                                  guifg=#ffff00 ctermfg=011
hi MoreMsg                                  guifg=#ffff00 ctermfg=011

" Search          Last search pattern highlighting (see 'hlsearch').
"                 Also used for highlighting the current line in the quickfix window and similar items
"                 that need to stand out.
hi Search         guibg=#ffaf00 ctermbg=214 guifg=#000000 ctermfg=000
" IncSearch       'incsearch' highlighting; also used for the text replaced with \":s///c\"
hi IncSearch      guibg=#ffff00 ctermbg=011 guifg=#000000 ctermfg=000
" StatusLine      status line of current window
hi StatusLine     guibg=#000000 ctermbg=000 guifg=#4e4e4e ctermfg=239 gui=bold      cterm=bold
" StatusLineNC    status lines of not-current windows
"                 Note\: if this is equal to \"StatusLine\" Vim will use \"^^^\" in the status line of
"                 the current window.
hi StatusLineNC   guibg=#000000 ctermbg=000 guifg=#eeeeee ctermfg=255 gui=italic

" WarningMsg      warning messages
hi clear WarningMsg
hi WarningMsg                               guifg=#dfaf00 ctermfg=178
" ErrorMsg        error messages on the command line
hi clear ErrorMsg
hi ErrorMsg                                 guifg=#d70000 ctermfg=160 gui=bold      cterm=bold

" DiffAdd         diff mode: Added line
" DiffChange      diff mode: Changed line
" DiffDelete      diff mode: Deleted line
" DiffText        diff mode: Changed text within a changed line
hi DiffAdd        guibg=#5f5fd7 ctermbg=062 guifg=#000000 ctermfg=000
hi DiffChange     guibg=#005f00 ctermbg=022 guifg=#000000 ctermfg=000
hi DiffDelete     guibg=#ff875f ctermbg=209 guifg=#000000 ctermfg=000
hi DiffText       guibg=#5f8700 ctermbg=064 guifg=#000000 ctermfg=000

" Folded          line used for closed folds
" FoldColumn      'foldcolumn'
hi Folded         guibg=#ffaf00 ctermbg=214 guifg=#000000 ctermfg=000
hi FoldColumn     guibg=#767676 ctermbg=243 guifg=#000000 ctermfg=000

"
" *group-name* *{group-name}* *E669* *W18*
" ...................................................................

" *Comment        any comment
hi Comment                                  guifg=#808080 ctermfg=244 gui=italic

" *Constant       any constant
"  String         a string constant: \"this is a string\"
"  Character      a character constant: 'c', '\n'
"  Number         a number constant: 234, 0xff
"  Boolean        a boolean constant: TRUE, false
"  Float          a floating point constant: 2.3e10
hi Constant                                 guifg=#00ffff ctermfg=014
hi String                                   guifg=#00ffff ctermfg=014
hi Character                                guifg=#00ffff ctermfg=014
hi Number                                   guifg=#00ffff ctermfg=014
hi Boolean                                  guifg=#00ffff ctermfg=014
hi Float                                    guifg=#00ffff ctermfg=014

" *Identifier     any variable name
"  Function       function name (also: methods for classes)
hi Identifier                               guifg=#00af5f ctermfg=035
hi Function                                 guifg=#00af5f ctermfg=035

" *Statement      any statement
"  Conditional    if, then, else, endif, switch, etc.
"  Repeat         for, do, while, etc.
"  Label          case, default, etc.
"  Operator       \"sizeof\", \"+\", \"*\", etc.
"  Keyword        any other keyword
"  Exception      try, catch, throw
hi Statement                                guifg=#ffff00 ctermfg=011
hi Conditional                              guifg=#ffff00 ctermfg=011
hi Repeat                                   guifg=#ffff00 ctermfg=011
hi Label                                    guifg=#ffff00 ctermfg=011
hi Operator                                 guifg=#ffff00 ctermfg=011 gui=bold      cterm=bold
hi Keyword                                  guifg=#ffff00 ctermfg=011
hi Exception                                guifg=#ffff00 ctermfg=011

" *PreProc        generic Preprocessor
"  Include        preprocessor #include
"  Define         preprocessor #define
"  Macro          same as Define
"  PreCondit      preprocessor #if, #else, #endif, etc.
hi PreProc                                  guifg=#00ff00 ctermfg=010
hi Include                                  guifg=#00ff00 ctermfg=010
hi Define                                   guifg=#00ff00 ctermfg=010
hi Macro                                    guifg=#00ff00 ctermfg=010
hi PreCondit                                guifg=#00ff00 ctermfg=010

" *Type           int, long, char, etc.
"  StorageClass   static, register, volatile, etc.
"  Structure      struct, union, enum, etc.
"  Typedef        A typedef
hi Type                                     guifg=#ffaf00 ctermfg=214
hi StorageClass                             guifg=#ffaf00 ctermfg=214
hi Structure                                guifg=#ffaf00 ctermfg=214
hi Typedef                                  guifg=#ffaf00 ctermfg=214

" *Special        any special symbol
"  SpecialChar    special character in a constant
"  Tag            you can use CTRL-] on this
"  Delimiter      character that needs attention
"  SpecialComment special things inside a comment
"  Debug          debugging statements
hi Special                                  guifg=#bcbcbc ctermfg=250
hi SpecialChar                              guifg=#bcbcbc ctermfg=250
hi Tag                                      guifg=#bcbcbc ctermfg=250
hi Delimiter                                guifg=#bcbcbc ctermfg=250
hi SpecialComment                           guifg=#bcbcbc ctermfg=250 gui=italic
hi Debug                                    guifg=#bcbcbc ctermfg=250

" *Underlined     text that stands out, HTML links
hi Underlined                                                         gui=underline cterm=underline

" *Ignore         left blank, hidden

" *Error          any erroneous construct
hi Error          guibg=#000000 ctermbg=000 guifg=#ff0000 ctermfg=009 gui=undercurl cterm=underline

" *Todo           anything that needs extra attention; mostly the keywords TODO FIXME and XXX
hi Todo           guibg=#005f5f ctermbg=023 guifg=#ffffff ctermfg=015 gui=bold      cterm=bold

" Conceal         placeholder characters substituted for concealed text (see 'conceallevel')
" Directory       directory names (and other special names in listings)
" VertSplit       the column separating vertically split windows
" SignColumn      column where |signs| are displayed
" MatchParen      The character under the cursor or just before it, if it is a paired bracket, and its
"                 match.

" Pmenu           Popup menu: normal item.
" PmenuSel        Popup menu: selected item.
" PmenuSbar       Popup menu: scrollbar.
" PmenuThumb      Popup menu: Thumb of the scrollbar.
" WildMenu        current match in 'wildmenu' completion

" Question        prompt and yes/no questions

" SpecialKey      Meta and special keys listed with \":map\", also for text used to show unprintable
"                 characters in the text, 'listchars'.
"                 Generally\: text that is displayed differently from what it really is.

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

" VisualNOS       Visual mode selection when vim is \"Not Owning the Selection\".
"                 Only X11 Gui's |gui-x11| and |xterm-clipboard| supports this.

