" Configuration file for vim
set modelines=0		" CVE-2007-2438
" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
color pablo
set backspace=2		" more powerful backspacing
set ai                  " auto indenting
set smartindent         " smart indents after something?
set history=100         " keep 100 lines of history
set ruler               " show cursor position
syntax on               " syntax highlighting on
set number              " shows line numbers
set wrap		" does not break up words between lines
set linebreak		" Not sure what this does.
set nolist		" Not sure what this does, either.
set textwidth=120
set wrapmargin=0
set title               "title in the status bar
set laststatus=2
set hidden              "remember undo
set scrolloff=20
set expandtab
set tabstop=4 "this is for tab stops for data that needs to go into a database from a text file
"set tabstop=2

set shiftwidth=4
set softtabstop=4
filetype plugin indent on
let anyfold_activate=1
set foldlevel=10

let g:NERDTreeWinSize = 20
imap jj <Esc>
imap JJ <Esc>
imap jJ <Esc>
imap Jj <Esc>
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
"nmap ff :w<CR>:!ruby %<CR>
nmap ff :w<CR>:!clear python %<CR>
"nmap ff :w<CR>:!node %<CR>
:map <silent> <f5> :!open %<CR>
" nmap ff :w<CR>:!less-watch-compiler --run-once less css index.less<CR>
"nmap ff :w<CR>:!/Applications/love.app/Contents/MacOs/love ./ %<CR>
"nmap ff :w<CR>:!gcc -o myprog % && ./myprog %<CR>
set mouse=a
set clipboard=unnamed
" set list lcs=tab:\|\
" set textwidth=80
let g:indent_guides_start_level = 1
" execute pathogen#infect()
" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup
