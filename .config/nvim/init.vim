" Vim-plug :P
call plug#begin()

Plug 'dracula/vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jeffkreeftmeijer/vim-dim'
" Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arzg/vim-substrata'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'owozsh/amora'
Plug 'KeitaNakamura/neodark.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'junegunn/seoul256.vim'
Plug 'ntk148v/vim-horizon'
Plug 'pangloss/vim-javascript'
Plug 'digitaltoad/vim-pug'
Plug 'rust-lang/rust.vim'
" Plug 'dense-analysis/ale'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'

call plug#end()

" Vim settings
syntax on
set tabstop=4
set expandtab
set nowrap
set incsearch
set smartcase
set autoindent
set cindent
set autochdir
set shiftwidth=4
set undodir
set nobackup
set colorcolumn=80
set laststatus=2
set noshowmode
set number relativenumber
set nu rnu

" Etc
let g:seoul256_light_background = 252
let g:seoul256_background = 236

" Mappings
let mapleader=" "
imap jk <Esc>
nmap <Leader>] :bnext<CR>
nmap <Leader>[ :bprevious<CR>
nmap <Leader>w :bd<CR>
nmap <Leader>g :Goyo<CR>
nmap <Leader>l :Limelight!!<CR>

" Auto-expanding
inoremap (<CR> (<CR>)<C-c>O
inoremap (<CR> (<CR>)<C-c>O
inoremap {<CR> {<CR>}<C-c>O
inoremap {<CR> {<CR>}<C-c>O
inoremap [<CR> [<CR>]<C-c>O
inoremap [<CR> [<CR>]<C-c>O

:command! W w
:command! Q q

" Goyo
let g:goyo_width = '80%'
let g:goyo_height = '100%'

" Prettier
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0


" emmet-vim
let g:user_emmet_leader_key=','
