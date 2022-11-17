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
"Plug 'ervandew/supertab'
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
Plug 'ryuta69/elly.vim'
call plug#end()

" Some basics:
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
"set cursorline
set background=dark
set termguicolors
colorscheme simple-dark-transparent

" Enable autocompletion:
set wildmode=longest,list,full

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


"hi NonText guifg=bg
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

" autocompletion engine
"let g:completor_clang_binary = '/usr/bin/clang'
"let g:completor_python_binary = '/usr/bin/python3'
"let g:completor_racer_binary = '/home/labib/.cargo/bin/racer'

" Filemanager , Tagbar, and other stuff
nmap <F8> :TagbarToggle<CR>
let g:tagbar_ctags_bin = '/usr/bin/ctags'
autocmd BufRead *.rs :setlocal tags=./rusty-tags.vi;/
autocmd BufWritePost *.rs :silent! exec "!rusty-tags vi --quiet --start-dir=" . expand('%:p:h') . "&" | redraw!
nmap <F9> :NERDTreeToggle<CR>
nnoremap <silent> <leader>      :<c-u>WhichKey '<Space>'<CR>
nnoremap <silent> <localleader> :<c-u>WhichKey  '`'<CR>
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsSnippetsDirectories=['/home/noncomplete/.vim/plugged/vim-snippets/UltiSnips']
let g:slime_target = "neovim"

" tex configs
let g:tex_flavor='latex'
let g:vimtex_quickfix_mode = 0
set conceallevel=1
let g:tex_conceal='abdmg'
let g:vim_markdown_folding_disabled = 1

let g:lightline = {
      \ 'colorscheme': 'powerlineish',
      \ }
