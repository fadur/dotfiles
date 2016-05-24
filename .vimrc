set nocompatible              " be iMproved, required

filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
source /usr/local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

call pathogen#infect()
call pathogen#helptags()

let g:snippets_dir = "~/.vim/snippets"

set encoding=utf-8
set gfn=Inconsolata:h14
set guifont=Inconsolata\ for\ Powerline:h14
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set termencoding=utf-8

set tabstop=8
set shiftwidth=4
set textwidth=79
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set laststatus=2
set ambiwidth=single


set hlsearch
set incsearch
set showmatch 

set nobackup
set backupcopy=yes
set noswapfile
set nowritebackup
set hidden
set number
set clipboard=unnamedplus,unnamed

syntax enable
set background=dark
colorscheme solarized
set guioptions-=m guioptions-=l guioptions-=r guioptions-=b guioptions-=L
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

map <C-W>, :NERDTreeToggle<CR> 
let NERDTreeIgnore = ['\.pyc$']
let NERDTreeShowHidden = 0
noremap <C-a><A-i> <C-w>
autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate

let g:user_emmet_mode='n'    "only enable normal mode functions.
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Z>'
set wrap
set linebreak
" note trailing space at end of next line
" vim-react-snippets:
Bundle "justinj/vim-react-snippets"

" SnipMate and its dependencies:
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"

" Other sets of snippets (optional):
Bundle "honza/vim-snippets"
Plugin 'tpope/vim-fugitive'
Plugin 'gmarik/Vundle.vim'
Plugin 'bigfish/vim-react'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'scrooloose/syntastic'                           " Syntax checking hacks for vim.
Plugin 'scrooloose/nerdtree'
Plugin 'powerline/powerline'
autocmd BufWritePre *.py :%s/\s\+$//e " Remove trailing whitespace on save.

" syntastic
let g:syntastic_python_checkers = ['pyflakes', 'flake8']
let g:syntastic_python_flake8_args = ['--ignore', 'E501,E402']

set tags=.ctagsfile;/                   " Load ctags from the .ctags file, check the current folder for tags file and keep going one directory up all the way to the root folder.
