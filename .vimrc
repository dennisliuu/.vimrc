:set nu
:set ai
:set cursorline
:set bg=dark
:set t_Co=256
:set tabstop=4
:set shiftwidth=4
:set scrolloff=3
:set mouse=a
:set ruler
:set foldenable
:set foldmethod=syntax
:set foldcolumn=1
:set foldlevel=5
:set autochdir

filetype indent on

:inoremap ( ()<Esc>i
:inoremap { {}<Esc>i
:inoremap [ []<ESC>i
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
:inoremap < <><ESC>i

hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE

syntax on
colorscheme onedark

if has("multi_byte")
  if &termencoding == ""
     let &termencoding = &encoding
  endif
  set encoding=utf-8
  setglobal fileencoding=utf-8
  "setglobal bomb
  set fileencodings=ucs-bom,utf-8,latin1
endif

let g:netrw_liststyle = 3
let g:netrw_browse_split = 1
let g:netrw_winsize = 25
