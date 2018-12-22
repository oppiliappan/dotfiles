let mapleader=' '

" normal
nnoremap <Leader>o : only<cr>
nnoremap <Leader>l : Lines<cr>
nnoremap <Leader>b : bnext<cr>
nnoremap <Leader>B : bprev<cr>
nnoremap <Leader>z : FZF<cr>
nnoremap <Leader>w : MtaJumpToOtherTag<cr>
nnoremap <Leader>t : call GetTabber()<cr>
nnoremap <Leader>r : RustRun<cr>
nnoremap <Leader><ESC> : nohlsearch<cr>
nnoremap <F2>      : NERDTreeToggle<cr>
nnoremap <C-l> :nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>
nnoremap H H:exec 'norm! '. &scrolloff . 'k'<cr>
nnoremap L L:exec 'norm! '. &scrolloff . 'j'<cr>
nnoremap  <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'
nmap <silent> H  :let g:help_in_tabs = !g:help_in_tabs<CR>

nnoremap <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
            \ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
            \ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

cmap w!! %!sudo tee > /dev/null %

" visual
vnoremap > >gv
vnoremap < <gv

" operator-pending
onoremap ax a`
onoremap ix i`

" visual block
xnoremap + g<C-a>
xnoremap - g<C-x>
