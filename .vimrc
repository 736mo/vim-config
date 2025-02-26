" general
syntax on
set number
set relativenumber
set ruler
set nobackup
set mouse=a

" line and column
hi cursorline cterm=undercurl ctermbg=darkgrey
hi cursorcolumn ctermbg=darkgrey
set cursorline
set cursorcolumn

" tab
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

call plug#begin('~/.vim/plugged')

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && npx --yes yarn install' }
Plug 'morhetz/gruvbox'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/everforest'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'
Plug 'luochen1990/rainbow'

call plug#end()

" colorscheme
if has('termguicolors')
    set termguicolors
endif
set background=dark
let g:sonokai_style = 'andromeda'
let g:sonokai_better_performance = 1
colorscheme sonokai
hi Comment cterm=NONE

if has("gui_running")
    source ~/.vim/gui.vim
else
    source ~/.vim/cterm.vim
endif

" lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': "darcula",
      \ }

" indentline
let g:indentLine_char = '|'

" rainbow
let g:rainbow_active = 1

" markdown
let g:markdown_fenced_languages = ['c', 'cpp', 'bash', 'python']
