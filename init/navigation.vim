""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN FILES IN DIRECTORY OF CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap %% <C-R>=expand('%:h').'/'<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPS TO JUMP TO SPECIFIC CTRL-P TARGETS AND FILES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>gr :topleft :split config/routes.rb<cr>
function! ShowRoutes()
  " Requires 'scratch' plugin
  :topleft 100 :split __Routes__
  " Make sure Vim doesn't write __Routes__ as a file
  :set buftype=nofile
  " Delete everything
  :normal 1GdG
  " Put routes output in buffer
  :0r! rake -s routes
  " Size window to number of lines (1 plus rake output length)
  :exec ":normal " . line("$") . "_ "
  " Move cursor to bottom
  :normal 1GG
  " Delete empty trailing line
  :normal dd
endfunction
map <silent> <leader>gR :call ShowRoutes()<cr>
map <silent> <leader>gg :topleft 100 :split Gemfile<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTRL-P BINDINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Exclude files and directories using Vim's wildignore
set wildignore+=*/.git/*,*/tmp/*,*.png,*.jpg,*.jpeg,*.gif,*/.themes/*,.DS_*,*/public/system/*,*/.idea/*,*/coverage/*,.tags*

" don't cache, its annoying refreshing all the time
let g:ctrlp_use_caching = 0
let g:ctrlp_persistent_input = 0
let g:ctrlp_cache_dir = $HOME . "/.vim/tmp"

" instead of constant searching, wait for user input to end
" 150ms is really good which is pauses in normal typing,
" shouldn't even notice but less cpu power.
let g:ctrlp_lazy_update = 150

" show hidden files
let g:ctrlp_show_hidden = 1

" working path is the closest ancestor with a .git/.hg repository
let g:ctrlp_working_path_mode = 'ra'

" Jump to current buffer but only if it's in this window. Otherwise
" open a new buffer.
let g:ctrlp_switch_buffer = 'e'

map <silent> <D-N>      :CtrlPRoot<CR>

" <leader> + (b)uffer will invoke CtrlP on the buffer.
map <silent> <leader>b   :CtrlPBuffer<CR>
