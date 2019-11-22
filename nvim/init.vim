" Plugins
call plug#begin()
Plug 'scrooloose/nerdtree'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'luochen1990/rainbow'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ntpeters/vim-better-whitespace'
Plug 'mhinz/vim-startify'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'itchyny/lightline.vim'
call plug#end()

" Coloring
syntax on
" set termguicolors

" Config
filetype plugin indent on
set tabstop=2 softtabstop=2 shiftwidth=2 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set wrap breakindent
set number relativenumber
set encoding=utf-8

" NERDTree
let NERDTreeShowHidden = 1

" Rainbow Parentheses
let g:rainbow_active = 1

" Indent Guides
let g:indent_guides_guide_size = 1

" Transparent Background
highlight Normal guibg=NONE ctermbg=NONE
highlight LineNr guibg=NONE ctermbg=NONE

" Terminal
tmap <Esc> <C-\><C-n>
tmap <C-w> <Esc><C-w>
autocmd BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave term://* stopinsert

" Mappings
let mapleader=","
nnoremap <silent><Leader>ft :NERDTreeToggle<CR>
nnoremap <silent><Leader>fd :NERDTreeFind<CR>
nnoremap <silent><Leader>p :Prettier<CR>
nnoremap <silent><Leader>bh :Startify<CR>
nnoremap <Leader>ti :IndentGuidesToggle<CR>
nnoremap <Leader>xd :StripWhitespace<CR>
nnoremap <Leader>te <C-w>s<C-w>j:terminal<CR>
