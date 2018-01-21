"""""""""""""""""""""""""""""""""""""
" Codingpotato vimrc configuration 
"""""""""""""""""""""""""""""""""""""
set nocompatible
syntax enable on
set nowrap
set encoding=utf8

" START Vundle Configuration 

" Disable file type for vundle
filetype off                " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'

" cpp
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'derekwyatt/vim-fswitch'
Plugin 'tpope/vim-commentary'
Plugin 'Valloric/YouCompleteMe'

" python
Plugin 'python-mode/python-mode'

" HTML
Plugin 'mattn/emmet-vim'

" git
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-fugitive'

" Theme
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'vim-scripts/phd'

call vundle#end()           " required
filetype plugin indent on   " required
" END Vundle Configuration 

" Show linenumbers
set number
set ruler

" Set Proper Tabs
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set softtabstop=2

" Always display the status line
set laststatus=2

" Enable highlighting of the current line
set cursorline

" colors
try
  set background=dark
  set guifont=Source\ Code\ Pro:h18
  colorscheme molokai
catch
endtry

set incsearch
set ignorecase
set wildmode=longest,list
set hlsearch
set hidden
set showmatch

" key map
let mapleader="\<Space>"
nmap <Leader>w :w<CR>
nmap <Leader>x :x<CR>
nmap <Leader>q :q<CR>
nmap <Tab> <C-^>

" NERDTree
nmap <Leader>n :NERDTreeToggle<CR>

" minibufexpl
nmap <S-Tab> :bn<CR>

" vim-fswitch
nmap <Leader>s :FSHere<cr>

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"

" pymode
let g:pymode_folding = 0
let g:pymode_lint_on_write = 0
nmap <F5> :!python3 %<CR>
nmap <S-F5> :!python2 %<CR>
