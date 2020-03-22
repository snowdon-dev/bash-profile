" Vim configuration file

" No more "vi" compatibility
set number                      "Line numbers are good
set noswapfile
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set spelllang=en_gb             "Set spelling language 
set foldmethod=syntax
set foldlevel=2
set ruler
set clipboard=unnamed

" Increase the history buffer for undo'ing mistakes
set history=1000
set undolevels=1000

" Enable at least 256 colors instead of the default 8 (I think?)
set t_Co=256
set laststatus=2

" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
"set tabstop=4
set expandtab
set shiftwidth=2
set softtabstop=2

filetype plugin on
filetype indent on

set wrap       "Wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1


" typescript setup
" for example gggqG. If you don’t know how
" @see https://www.vimfromscratch.com/articles/setting-up-vim-for-typescript
autocmd FileType typescript setlocal formatprg=prettier\ --parser\ typescript

" ================ configure SirVer/ultisnips ========================

" " Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsListSnippets="<c-l>"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" ================ configure pangloss/vim-javascript ================
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

" ================ configure pangloss/vim-javascript ================
let g:javascript_plugin_jsdoc = 1


" =============== configure autocmd vundle nerd tree =============== 
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1


" Enable deoplete at startup
let g:deoplete#enable_at_startup = 1


" =============== configure indent guide ========================
"let g:indent_guides_enable_on_vim_startup = 1

"hi IndentGuidesOdd  ctermbg=black
"hi IndentGuidesEven ctermbg=darkgrey


" ================ Other ========================

autocmd Filetype css setlocal tabstop=2

" I don't want those .swp files cluttering up my normal directories
" Gets very messy with version control
" So store them in a seperate directory
set directory=~/.vim/swap-files,~/tmp,.

" This setting hurts you the most when first starting with vim: disable the arrowkeys. For navigation, use "hjkl"
" You'll probably want to disable these when first using vim.
 nnoremap <up> <nop>
 nnoremap <down> <nop>
 nnoremap <left> <nop>
 nnoremap <right> <nop>
 inoremap <up> <nop>
 inoremap <down> <nop>
 inoremap <left> <nop>
 inoremap <right> <nop>
 vnoremap <up> <nop>
 vnoremap <down> <nop>
 vnoremap <left> <nop>
 vnoremap <right> <nop>

" Source/reload .vimrc after saving .vimrc
"autocmd bufwritepost .vimrc source $MYVIMRC


" ================ Vim.Plug ======================

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/plugged') 

" Vim enhancments
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
"Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline-themes'
Plug 'captbaritone/molokai'
Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
Plug 'ajh17/spacegray.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'

" typescript support
Plug 'HerringtonDarkholme/yats.vim'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
endif
Plug 'Shougo/denite.nvim'
Plug 'leafgarland/typescript-vim'


" javascript support
" Plug 'pangloss/vim-javascript' won't resolve

" node support
Plug 'moll/vim-node'

Plug 'godlygeek/tabular'

" markdown support
Plug 'plasticboy/vim-markdown'

" vue js support
Plug 'posva/vim-vue'

" python
Plug 'nvie/vim-flake8'

call plug#end()

" ================ Scheme ========================

syntax on
colorscheme spacegray 

" Python
let python_highlight_all=1
syntax on

