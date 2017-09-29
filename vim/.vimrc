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
set nowrap
set cursorline

" minimal current line indicator
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %{LineNoIndicator()}
let g:line_no_indicator_chars = ['top', '▁', '▂', '▃', '▄', '▅', '▆', '▇', '█', 'bot']

" git gutter settings
let g:gitgutter_override_sign_column_highlight = 0
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = 'x'

" strip trailing whitespaces
autocmd BufWritePre * %s/\s\+$//e

" ui settings
let g:enable_bold_font = 1
let g:enable_italic_font = 0
colorscheme base16-tomorrow-night

" keybindings
map <F1> :NERDTreeCWD
map <F2> :NERDTreeToggle
map <F5> :split
map <F6> :vsplit
map <F9> :GitGutterSignsToggle
