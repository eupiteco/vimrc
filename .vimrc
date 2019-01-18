" init plugins
execute pathogen#infect()

" numerando as linhas
set number
set relativenumber

" identação - quem cuida agora é o vimSleuth
" filetype plugin indent on
set tabstop=2
set shiftwidth=2
set smarttab

"sinaliza buscas enquanto escreve e os resultados
set incsearch
set hlsearch

"cores 
syntax on
colorscheme onedark
let g:lightline = { 'colorscheme': 'onedark', }

"sinaliza linha atual
set cursorline

"desabilita swaps
set noswapfile

"mostra caracteres invisíveis
set list
set listchars=tab:\|\ ,trail:~,extends:>,precedes:<,space:·

"hisórico persistente de undos
set undofile
set undodir=~/.vim/undodir

" file tree
let g:netrw_liststyle = 3 "treeview
let g:netrw_banner = 0 "desativa o banner
let g:netrw_browse_split = 4 "abre no último burfer
let g:netrw_winsize = 25 "largura do navegador em %
