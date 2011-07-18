" --------
" .vimrc
" -------

"""""""""""""""""""""""""""""" 
" Pathogen
"""""""""""""""""""""""""""""" 
filetype off
call pathogen#runtime_append_all_bundles()

"""""""""""""""""""""""""""""" 
" Take out the direction keys.
"""""""""""""""""""""""""""""" 
set softtabstop=4
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

"""""""""""""""""""""""""""""" 
" Tab stuff
"""""""""""""""""""""""""""""" 
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set autoindent
set softtabstop=4

"""""""""""""""""""""""""""""" 
" Filetype stuff
"""""""""""""""""""""""""""""" 
filetype on
filetype plugin on
filetype indent on

"""""""""""""""""""""""""""""" 
" Smart indenting
"""""""""""""""""""""""""""""" 
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

"""""""""""""""""""""""""""""" 
" Auto completion via ctrl-space (instead of the nasty ctrl-x ctrl-o)
"""""""""""""""""""""""""""""" 
set omnifunc=pythoncomplete#Complete
inoremap <Nul> <C-x><C-o>

"""""""""""""""""""""""""""""" 
" Wrap at 72 chars for comments.
"""""""""""""""""""""""""""""" 
set formatoptions=cq textwidth=72 foldignore= wildignore+=*.py[co]

"""""""""""""""""""""""""""""" 
" Highlight end of line whitespace.
"""""""""""""""""""""""""""""" 
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

"""""""""""""""""""""""""""""" 
" Colorscheme Setup
"""""""""""""""""""""""""""""" 
if ! has("gui_running")
    set t_Co=256
endif
" feel free to choose :set background=light for a different style
set background=dark
colorscheme peaksea

"""""""""""""""""""""""""""""" 
" => bufExplorer plugin 
"""""""""""""""""""""""""""""" 
let g:bufExplorerDefaultHelp=0 
let g:bufExplorerShowRelativePath=1 
let g:bufExplorerFindActive=1 
let g:bufExplorerSortBy='name' 
map <leader>o :BufExplorer<cr> 
  
  
""""""""""""""""""""""""""""""""" 
" => Minibuffer plugin 
""""""""""""""""""""""""""""""""" 
let g:miniBufExplModSelTarget = 1 
let g:miniBufExplorerMoreThanOne = 0
let g:miniBufExplModSelTarget = 0
let g:miniBufExplUseSingleClick = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplVSplit = 30
let g:miniBufExplSplitBelow=1

autocmd BufRead,BufNew :call UMiniBufExplorer

map <leader>u :TMiniBufExplorer<cr>


