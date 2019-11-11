" init plugins
execute pathogen#infect()

" uses ; as leader, more handy
let mapleader = ";"

" extra lines on top and bottom of screen
set so=7

" numbering lines
set number
set relativenumber

" filetype plugin indent on
set tabstop=2
set shiftwidth=2
set smarttab

" hilights search results on enter and while typing
set incsearch
set hlsearch

" colors
syntax on
colorscheme zenburn
" Uses terminl default bg color
hi Normal guibg=NONE ctermbg=NONE

" hilights current line
set cursorline

" didsables swapfiles
set noswapfile

" shows a list of nonprinting caracters
set listchars=tab:\|\ ,trail:~,extends:>,precedes:<,space:·
" set list

"persistent undo TODO
set undodir='/home/eupiteco/.vim/undo'
set undofile

" better split behavior
set splitbelow
set splitright

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

" Copy to clipboard
vmap <C-c> "+y

" Save, quit edit, bufferlist etc
nmap <Leader>q :q!<Enter>
nmap <Leader>Q :wqa!<Enter>
nmap <Leader>t :w<Enter>:b#<Enter>
nmap <Leader>w :wa<Enter>

" Autoclose brackets, parentesis etc.
imap {<CR> {<CR>}<Esc>
imap (<CR> (<CR>)<Esc>
imap [<CR> [<CR>]<Esc>
imap {<Space> {}<Esc>i
imap (<Space> ()<Esc>i
imap [<Space> []<Esc>i
imap <<Space> <><Esc>i
imap "<Space> ""<Esc>i
imap '<Space> ''<Esc>i

" Wrap things on visual mode
vmap {} c{}<Esc>P
vmap [] c[]<Esc>P
vmap () c()<Esc>P
vmap "" c""<Esc>P
vmap '' c''<Esc>P

" Better split panes movement 
nmap <C-J> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>

" Open netrwtree
nmap <Leader>d :Vex<CR>

" Navigate between tabs
nmap <Leader><Tab> gt

" Open ctrlp - TODO why this does not work as a plugin setting??
nmap <Leader>f :CtrlP<CR>

" Open Ag cmd line
nmap <Leader>F :Ag<Space>

"""""""""""
" Plugins "
"""""""""""
" CTRLP
let g:ctrlp_map = '<C-P>'
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
