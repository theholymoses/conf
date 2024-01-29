set fileencodings=utf-8

set dir=$HOME/.vim/swapfiles//
set vdir=$HOME/.vim/views//

set wildmenu
set number
set nowrapscan

set noautoindent
set expandtab
set shiftwidth=2
set tabstop=2

set cursorline

syntax off
colorscheme custom
set hlsearch

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

:runtime! ftplugin/man.vim
