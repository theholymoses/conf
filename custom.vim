" ******************** base
set background=dark

hi clear

if exists("syntax on")
  syntax reset
endif

let g:colors_name = "custom"

" ******************** 
hi Normal ctermfg=grey ctermbg=black
hi NonText ctermfg=cyan ctermbg=black
hi SpecialKey ctermfg=cyan ctermbg=black

" ******************** interface
hi LineNr term=bold
hi LineNr cterm=bold ctermfg=cyan

hi Cursor term=bold
hi Cursor cterm=bold

hi CursorLine term=NONE
hi CursorLine cterm=NONE

hi CursorLineNr term=bold
hi CursorLineNr cterm=bold ctermfg=magenta

hi MatchParen term=bold 
hi MatchParen cterm=bold ctermfg=magenta ctermbg=black

hi Search term=bold
hi Search cterm=bold ctermfg=cyan ctermbg=black

hi IncSearch term=bold
hi IncSearch cterm=bold ctermfg=cyan ctermbg=black

hi WildMenu term=bold
hi WildMenu cterm=bold ctermfg=black ctermbg=magenta

hi EndOfBuffer term=bold
hi EndOfBuffer cterm=bold ctermfg=darkgray

hi StatusLine term=standout
hi StatusLine cterm=bold ctermfg=black ctermbg=lightcyan

hi StatusLineTerm term=standout
hi StatusLineTerm cterm=bold ctermfg=black ctermbg=lightcyan

hi StatusLineTermNC term=bold
hi StatusLineTermNC cterm=bold ctermfg=black ctermbg=lightcyan

hi Folded term=bold
hi Folded cterm=bold ctermfg=darkcyan ctermbg=black

hi Visual term=reverse
hi Visual cterm=reverse ctermfg=cyan ctermbg=black

" ******************** warnings, errors, etc
hi Question term=bold
hi Question cterm=bold ctermfg=lightcyan

hi ModeMsg term=bold
hi ModeMsg cterm=bold ctermfg=lightcyan

hi MoreMsg term=bold
hi MoreMsg cterm=bold ctermfg=lightcyan

hi WarningMsg term=standout
hi WarningMsg cterm=bold ctermfg=black ctermbg=lightcyan

hi ErrorMsg term=standout
hi ErrorMsg cterm=bold ctermfg=black ctermbg=lightcyan

hi Error term=standout
hi Error cterm=bold ctermfg=black ctermbg=lightcyan

" ******************** diff 
hi DiffChange term=standout
hi DiffChange cterm=standout ctermfg=gray ctermbg=black

hi DiffText term=standout
hi DiffText cterm=standout,bold,italic ctermfg=gray ctermbg=black

hi DiffAdd term=standout
hi DiffAdd cterm=standout,bold,italic ctermfg=lightcyan ctermbg=black

hi DiffDelete term=standout
hi DiffDelete cterm=standout ctermfg=darkcyan ctermbg=black

