set fileencodings=utf-8,cp1251

set dir=$HOME/.vim/swapfiles//

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

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

:runtime! ftplugin/man.vim
