" Vim-plug
call plug#begin()

Plug 'dracula/vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'

call plug#end()

" Vim settings
syntax on
set tabstop=4 softtabstop=4
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

" Goyo
let g:goyo_width = '80%'
let g:goyo_height = '80%'
