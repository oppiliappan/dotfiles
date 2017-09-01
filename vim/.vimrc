execute pathogen#infect()
set tabstop=4
" set number
syntax on
filetype plugin indent on
set nobackup
set nowritebackup
set swapfile
set dir=/tmp
set laststatus=2
set noshowmode
set nowrap
set cursorline
autocmd BufWritePre * %s/\s\+$//e
let g:airline_powerline_fonts= 0
let g:airline#extensions#tabline#enabled = 1
let g:enable_bold_font = 1
let g:enable_italic_font = 0
colorscheme base16-tomorrow-night

" keybindings
map <F1> :NERDTreeCWD
map <F2> :NERDTreeToggle
map <F5> :split
map <F6> :vsplit
