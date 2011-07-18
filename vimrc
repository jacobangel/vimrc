" --------
" .vimrc
" -------

" Pathogen
filetype off
call pathogen#runtime_append_all_bundles()

" Take out the direction keys.
set softtabstop=4
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

" Tab stuff
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
set softtabstop=4

" Filetype stuff
filetype on
filetype plugin on
filetype indent on

set nocompatible
set modelines=0
" The magical turn-Vim-into-a-Python-IDE vim resource file!
"
" Mostly taken from http://www.sontek.net/category/Vim.aspx
" Other bits culled from various sources, Canonical guys, or made up by me.
"
" Julian Edwards 2008-05-30

" Wrapping and tabs.
set tw=78 ts=4 sw=4 sta et sts=4 ai

" Smart indenting
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Auto completion via ctrl-space (instead of the nasty ctrl-x ctrl-o)
set omnifunc=pythoncomplete#Complete
inoremap <Nul> <C-x><C-o>

" Wrap at 72 chars for comments.
set formatoptions=cq textwidth=72 foldignore= wildignore+=*.py[co]

" Highlight end of line whitespace.
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

