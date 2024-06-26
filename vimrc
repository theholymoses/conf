set fileencodings=utf-8

set dir=$HOME/.vim/swapfiles//
set vdir=$HOME/.vim/views//

set wildmenu
set number
set nowrapscan
set showcmd

set noautoindent
set expandtab
set shiftwidth=2
set tabstop=2

set matchpairs+=<:>

set cursorline

syntax off
colorscheme custom
set hlsearch

set nowrap

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

:runtime! ftplugin/man.vim
