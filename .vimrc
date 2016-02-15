
set cpoptions+=$
set nocompatible              " be iMproved, required
filetype off                  " required

"--------------------------------------------------------------------- 
"    Vundle
"--------------------------------------------------------------------- 
"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
"Plugin 'edkolev/tmuxline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

"--------------------------------------------------------------------- 
"    General
"--------------------------------------------------------------------- 
vnoremap <C-c> "+y  " Yank with C-c to clipboard
set nocompatible  " disable vi compatibility.
set history=256  " Number of things to remember in history.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set hlsearch    " highlight search
set ignorecase  " Do case in sensitive matching with
set smartcase     " be sensitive when there's a capital letter
set incsearch   "

"--------------------------------------------------------------------- 
"    Visual
"--------------------------------------------------------------------- 
"colorscheme desert

syntax enable
let g:solarized_termcolors=256
let g:solarized_bold=0
set t_Co=16
colorscheme solarized
set background=dark

set showmatch  " Show matching brackets.
set nu  "show line numbers
set matchtime=5  " Bracket blinking.
set novisualbell  " No blinking
set noerrorbells  " No noise.
set vb t_vb= " disable any beeps or flashes on error
set ruler  " Show ruler
set showcmd " Display an incomplete command in the lower right corner 

"--------------------------------------------------------------------- 
"    NerdTree
"--------------------------------------------------------------------- 
map <C-n> :NERDTreeToggle<cr> "C-n to toggle nerdtree on/off


"--------------------------------------------------------------------- 
"    ctags
"--------------------------------------------------------------------- 
set notagrelative "paths not relative to tags directory (.git/)


"--------------------------------------------------------------------- 
"    fugitive
"--------------------------------------------------------------------- 
set diffopt+=vertical

"--------------------------------------------------------------------- 
"    airline
"--------------------------------------------------------------------- 
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

"set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

set laststatus=2
let g:airline_powerline_fonts = 1
"let g:Powerline_symbols = 'fancy'
"let g:airline_theme             = 'powerlineish'
"--------------------------------------------------------------------- 
syntax on
set tabstop=8
set expandtab
set softtabstop=4
set shiftwidth=4
filetype indent on

"Open each buffer in its own tab
"I don't think I like this...
"au BufAdd,BufNewFile * nested tab sball

"Code completion
au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

"Not sure this is needed or working...
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
