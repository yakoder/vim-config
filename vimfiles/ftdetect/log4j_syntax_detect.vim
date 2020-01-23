" Vim syntax file
" " Language: log4j log files
" " Maintainer: Shivendra Panicker
" " Latest Revision: September 5 2015 
au BufRead,BufNewFile *.mylogs set filetype=log4j_syntax_highlighter
au BufRead,BufNewFile *.log set filetype=log4j_syntax_highlighter
au BufRead,BufNewFile maven*.out set filetype=log4j_syntax_highlighter
au BufRead,BufNewFile catalina.out* set filetype=log4j_syntax_highlighter
