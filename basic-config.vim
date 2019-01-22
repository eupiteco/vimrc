""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The great vimrc from Piteco
"
" Maintainer
" 	Piteco - eupiteco AT gmail DOT com
"
" Repository
" 	https://github.com/eupiteco/vimrc
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" numbering lines
set number
set relativenumber " lines are counted from and to the current one

" identation
set tabstop=2
set shiftwidth=2
set smarttab

" hilight search while typing at the commandoline
set incsearch
set hlsearch

" colors
syntax on
colorscheme onedark

" hilight the current line
set cursorline

" disable swaps
set noswapfile

" set a list of non-visible chars
set list
set listchars=tab:\|\ ,trail:~,extends:>,precedes:<,space:·

" persistent undo history
set undofile
set undodir=~/.vim/undodir

" netrw file tree
let g:netrw_liststyle = 3 " treeview
let g:netrw_banner = 0 " disable the banner
let g:netrw_browse_split = 4 " opens in the last used buffer
let g:netrw_winsize = 25 " tree width in %
