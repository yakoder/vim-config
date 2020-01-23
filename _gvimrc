"set guifont=Consolas:h9
"set guifont=Consolas:h8
set guifont=Consolas:h10
"set printfont=Consolas:h9
set printfont=Consolas:h8
"set printoptions=syntax:y,left:18pt,right:18pt,top:32pt,bottom:32pt,number:y
set printoptions=left:18pt,right:18pt,top:25pt,bottom:25pt,header:2,syntax:y,number:y,wrap:y,duplex:off,collate:y,jobsplit:n,portrait:y,paper:letter,formfeed:n
"set printoptions=left:18pt,right:18pt,top:25pt,bottom:25pt,header:2,syntax:y,number:n,wrap:y,duplex:off,collate:y,jobsplit:n,portrait:y,paper:letter,formfeed:n

set columns=120
set lines=40

set ch=2		" Make command line two lines high
set mousehide		" Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
let &guioptions = substitute(&guioptions, "t", "", "g")
" Always show filetypes in menu
"Commented out b/c of following error
"E329: No menu \"&Show filetypes in menu\"
"let do_syntax_sel_menu = 1|runtime! synmenu.vim|aunmenu &Syntax.&Show\ filetypes\ in\ menu
