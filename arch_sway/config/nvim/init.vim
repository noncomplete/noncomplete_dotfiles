"""""""""""""""""""
"  LABIB's vimrc  "
"""""""""""""""""""
let mapleader =" "
let maplocalleader ="`"

call plug#begin('~/.vim/plugged')
Plug '/usr/bin/fzf'
Plug 'tpope/vim-sensible'
Plug 'tek256/simple-dark'
Plug 'lurst/austere.vim'
Plug 'aditya-azad/candle-grey'
Plug 'chriskempson/base16-vim'
Plug 'tpope/vim-fugitive'
Plug 'huyvohcmc/atlas.vim'
Plug 'Jorengarenar/vim-darkness'
Plug 'ervandew/supertab'
"Plug 'romgrk/winteract.vim'
Plug 'voldikss/vim-floaterm'
Plug 'voldikss/fzf-floaterm'
Plug 'liuchengxu/vim-clap'
Plug 'andreypopp/vim-colors-plain'
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'itchyny/lightline.vim'
Plug 'widatama/vim-phoenix'
"Plug 'JuliaEditorSupport/julia-vim'
Plug 'dag/vim-fish'
Plug 'junegunn/goyo.vim'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"Plug 'dylanaraps/wal.vim'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'cespare/vim-toml'
"Plug 'jpalardy/vim-slime'
Plug 'rust-lang/rust.vim'
Plug 'mhinz/vim-startify'
Plug 'plasticboy/vim-markdown'
Plug 'ryanoasis/vim-devicons'
Plug 'yamatsum/nvim-cursorline'
Plug 'sainnhe/edge'
call plug#end()

" Some basic setup
set nocompatible
set title
set mouse=a
set noshowmode
filetype plugin on
set nosol
syntax on
set encoding=utf-8
set number relativenumber
set shiftwidth=4
set tabstop=4
set expandtab
set shell=/bin/bash
set list
set listchars=tab:▸\ ,
set cursorline

" Colorscheme options
"set background=dark
set termguicolors
let g:edge_style = 'default'
let g:edge_better_performance = 1
let g:edge_transparent_background = 1
colorscheme edge
highlight LineNr guibg=none ctermbg=none

" Autocompletion Settings
let g:SuperTabDefaultCompletionType = "<c-n>"
"let g:SuperTabContextDefaultCompletionType = "<c-n>"

" Goyo plugin makes text more readable when writing prose:
map <leader>G :Goyo \| set linebreak<CR>

" Spell-check set to <leader>o, 'o' for 'orthography':
map <leader>o :setlocal spell! spelllang=en_us<CR>
hi clear SpellBad
hi SpellBad cterm=underline
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

"Floaterm
map <leader>t :FloatermNew <CR>
map <leader>T :FloatermToggle <CR>
map <leader>f :FloatermNew fzf <CR>


" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" Shortcutting split navigation, saving a keypress:
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Readmes autowrap text:
autocmd BufRead,BufNewFile *.md set tw=79

" Split characters
set fillchars=vert:\│

" Filemanager , Tagbar, and other stuff
nmap <F8> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/bin/ctags'
nmap <F9> :NERDTreeToggle<CR>
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  '`'<CR>

" tex configs
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vim_markdown_folding_disabled=1

" Statusline config
let g:lightline = {
      \ 'colorscheme': 'edge',
      \ }

"== DO NOT ADD NON-LUA CONFIG AFTER =="

" Cursorline nvim config (lua code) 
lua << EOF
require('nvim-cursorline').setup {
  cursorline = {
    enable = true,
    timeout = 1000,
    number = false,
    },
  cursorword = {
    enable = true,
    min_length = 3,
    hl = { underline = true },
    }
}
