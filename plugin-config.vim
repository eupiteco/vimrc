""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" Part of eupiteco`s vim configuration, get it at
" 	https://github.com/eupiteco/vimrc
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Showing pathogen where the plugins are
let s:vim_runtime = expand('<sfile>:p:h')."/.."
call pathogen#infect(s:vim_runtime.'/plugins-folder/{}')

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LitghtLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = { 'colorscheme': 'onedark', }
