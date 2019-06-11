" init plugins
execute pathogen#infect()

" linhas no topo e fundo da tela
set so=7

" numerando as linhas
set number
set relativenumber

" filetype plugin indent on
set tabstop=2
set shiftwidth=2
set smarttab

"sinaliza buscas enquanto escreve e os resultados
set incsearch
set hlsearch

"muda o diretório autmoaticamente para o arquivo atual

"cores 
syntax on
colorscheme onehalfdark
hi Normal guibg=NONE ctermbg=NONE

"sinaliza linha atual
set cursorline

"desabilita swaps
set noswapfile

"mostra caracteres invisíveis
set listchars=tab:\|\ ,trail:~,extends:>,precedes:<,space:·
" set list

"persistent undo
set undodir='/home/eupiteco/.vim/undo'
set undofile

" Native filetree
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 15

""""""""""""
" Commands "
""""""""""""
"use bangs so it does not warn about resetting commands
command! Vrc vs ~/.vimrc
command! Srv source ~/.vimrc

"""""""""""""""
" Keybindings "
"""""""""""""""
" map not to junp lines
vmap k gk
vmap j gj
nmap k gk
nmap j gj

" Copy to clipboard
vmap <C-c> "+y

" Save, quit edit, bufferlist etc
nmap <Leader>q :q!<Enter>
nmap <Leader>Q :wqa!<Enter>
nmap <Leader>t :w<Enter>:b#<Enter>
nmap <Leader>w :wa<Enter>

" Auto parenteses, chaves e colchetes
imap {<Return> {<Return>}<Esc>
imap (<Return> (<Return>)<Esc>
imap [<Return> [<Return>]<Esc>
imap {<Space> {}<Esc>i
imap (<Space> ()<Esc>i
imap [<Space> []<Esc>i
imap "<Space> ""<Esc>i
imap '<Space> ''<Esc>i

" Wrap com parenteses, chaves etc
vmap {} c{}<Esc>P
vmap [] c[]<Esc>P
vmap () c()<Esc>P
vmap "" c""<Esc>P
vmap '' c''<Esc>P

"""""""""""
" Plugins "
"""""""""""
" CTRLP
let g:crtlp_map = '<c-h>'
let g:ctrlp_custom_ignore = {
	\ 'dir': 'node_modules',
	\}
" Lightline
let g:lightline = {
			\'colorscheme': 'onehalfdark',
			\'active': {
			\  'left': [['mode', 'paste'],
			\           ['readonly', 'filename', 'modified']],
			\  'right': [['lineinfo'],
			\           ['percent'],
			\           ['gitbranch','filetype']]
			\},
			\'inactive': {
			\  'left': [['filename', 'modified']]
			\},
			\'component_function': {
			\  'gitbranch': 'gitbranch#name'
			\  },
			\}

"""""""""
" Nextt "
"""""""""
autocmd BufRead,BufNewfile /home/eupiteco/nextt/classdojo/**/* nmap <Leader>p :Prettier<Enter>
