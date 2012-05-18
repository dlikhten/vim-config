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
" CtrlP will manage the local directory by finding the closest
" parent dir named .git and making it's parent the CWD
let g:ctrlp_working_path_mode = 2

" Think of it as <leader> + (g)o + <where to?>
" <leader> + (g)o + (v)iews
" <leader> + (g)o + (c)ontrollers
map <silent> <leader>gv :CtrlP app/views<cr>
map <silent> <leader>gc :CtrlP app/controllers<cr>
map <silent> <leader>gm :CtrlP app/models<cr>
map <silent> <leader>gh :CtrlP app/helpers<cr>
map <silent> <leader>gl :CtrlP lib<cr>
map <silent> <leader>gj :CtrlP app/assets/javascripts<cr>
map <silent> <leader>gs :CtrlP app/assets/stylesheets<cr>

" Think of it as <leader> + (f)ile + <what kind?>
" <leader> + (f)ile
" <leader> + (f)ile + current (d)irectory
" <leader> + (f)ile + (s)pec
map <silent> <D-N>      :CtrlP<CR>
map <silent> <leader>fs :CtrlP spec<cr>
map <silent> <leader>fa :CtrlP app<cr>
map <silent> <leader>fc :CtrlP config<cr>
map <silent> <leader>fl :CtrlP lib<cr>
map <silent> <leader>fd :CtrlP %%<cr>
map <silent> <leader>f  :CtrlP<cr>

" reload the cache, you need to do this when if
" you cannot find a file you know exists (and was recently added/moved)
" I'd do this in the CtrlP work, but that makes CtrlP work too slow so
" it needs to be independent
map <silent> <leader>fR :ClearCtrlPCache<cr>

" <leader> + (b)uffer will invoke CtrlP on the buffer.
map <silent> <leader>b   :CtrlPBuffer<CR>
