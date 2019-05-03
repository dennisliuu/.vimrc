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

hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi CursorLineNr cterm=bold ctermfg=Green ctermbg=NONE

execute pathogen#infect()
filetype indent on
filetype plugin indent on
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

set laststatus=2
set t_Co=256

" move line up/down using shift+arrow
nnoremap <S-DOWN> :m .+1<CR>==
nnoremap <S-UP> :m .-2<CR>==
inoremap <S-DOWN> <Esc>:m .+1<CR>==gi
inoremap <S-UP> <Esc>:m .-2<CR>==gi
vnoremap <S-DOWN> :m '>+1<CR>gv=gv
vnoremap <S-UP> :m '<-2<CR>gv=gv

python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup