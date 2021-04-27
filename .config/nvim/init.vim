" Vim-plug :P
call plug#begin()

Plug 'dracula/vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/goyo.vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'arzg/vim-substrata'
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
Plug 'pangloss/vim-javascript'
Plug 'digitaltoad/vim-pug'
Plug 'dense-analysis/ale'
Plug 'mattn/emmet-vim'
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-commentary'

call plug#end()

" Vim settings
syntax on
set tabstop=2
set expandtab
set nowrap
set incsearch
set smartcase
set autoindent
set cindent
set autochdir
set shiftwidth=2
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

:command! W w
:command! Q q

" Goyo
let g:goyo_width = '80%'
let g:goyo_height = '100%'

" ALE
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'html': ['prettier']
\}
let g:ale_fix_on_save = 1
let g:ale_javascript_prettier_options = '--single-quote --trailing-comma all'

" emmet-vim
let g:user_emmet_leader_key=','
