set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'itchyny/lightline.vim'
Plugin 'edkolev/tmuxline.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()
filetype plugin indent on

set background=light
" colorscheme solarized-light

let mapleader = ","

syntax enable
set showcmd
" Editing experience
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent

set ruler
set number
set relativenumber
set wrap
set cursorline

set undolevels=500

" Folding
set foldmethod=indent
nnoremap <space> za

" Search
nnoremap <silent> <Esc><Esc> <Esc>:noh<CR><Esc>
set hlsearch
set smartcase
set magic
set wildmode=longest,list,full
set wildmenu
set wildignore=*.pyc

set noswapfile

" Make copy paste better
set clipboard=unnamed

execute pathogen#infect()
call pathogen#helptags()

set laststatus=2 " have airline on by default
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
map <C-a> :AirlineToggle<CR>

" vim airline stuff
autocmd VimEnter * AirlineTheme bubblegum
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN %{bufnr("%")}'
" tmuxline
" Compilation
autocmd FileType javascript nnoremap <leader>r :!clear&&node %<CR>
autocmd FileType python nnoremap <leader>r :!clear&&python3 %<CR>
autocmd FileType c nnoremap <leader>r :!clear&&gcc -Wall -Werror % &&./a.out<CR>
autocmd FileType javascript nnoremap <leader>R :!clear&&node % > output.txt<CR>
autocmd FileType python nnoremap <leader>R :!clear&&python % > output.txt<CR>
autocmd FileType c nnoremap <leader>R :!clear&&gcc -Wall -Werror % &&./a.out > output.txt<CR>

set noerrorbells
set visualbell
