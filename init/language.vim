" Whitespace & highlighting & language-specific config
" ----------------------------------------------------
" C family
autocmd BufWritePre *.m,*.h,*.c,*.mm,*.cpp,*.hpp :FixWhitespace

" Ruby, Rails
autocmd BufWritePre *.rb,*.yml,*.js,*.coffee,*.ejs,*.css,*.less,*.sass,*.scss,*.html,*.xml,*.erb,*.haml,*.feature :FixWhitespace

" Java, PHP
autocmd BufWritePre *.java,*.php :FixWhitespace

" Highlight Ruby files
au BufRead,BufNewFile *.thor set filetype=ruby
au BufRead,BufNewFile *.god set filetype=ruby
au BufRead,BufNewFile Gemfile* set filetype=ruby
au BufRead,BufNewFile Vagrantfile set filetype=ruby
au BufRead,BufNewFile soloistrc set filetype=ruby

" Highlight JSON files as javascript
autocmd BufRead,BufNewFile *.json set filetype=javascript

" Highlight Jasmine fixture files as HTML
autocmd BufRead,BufNewFile *.jasmine_fixture set filetype=html

" Consider question/exclamation marks to be part of a Vim word.
autocmd FileType ruby set iskeyword=@,48-57,_,?,!,192-255
autocmd FileType scss set iskeyword=@,48-57,_,-,?,!,192-255

" Insert ' => '
autocmd FileType ruby imap  <Space>=><Space>

" Open all folds in Markdown.
autocmd FileType mkd normal zR
