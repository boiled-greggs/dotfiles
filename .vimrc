set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tmhedberg/SimpylFold'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-vinegar'
" Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-pathogen'
call vundle#end()

let mapleader = ","
set showcmd


filetype plugin indent on
syntax enable
" Editing experience
set backspace=2
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
autocmd filetype tex set ts=2 sts=2 sw=2 et

set ruler
set number
set relativenumber
set wrap
set cursorline

set undolevels=500

"Indent guides
"let g:indent_guides_enable_on_vim_startup = 1
"let g:indent_guides_auto_colors = 0
"let g:indent_guides_start_level = 2
"hi IndentGuidesOdd  ctermbg=188
"hi IndentGuidesEven ctermbg=254


" Folding
set foldmethod=indent
nnoremap <space> za
nnoremap <C-e> zi

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

autocmd VimEnter * AirlineTheme minimalist 
set laststatus=2 " have airline on by default
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
map <C-a> :AirlineToggle<CR>

" vim airline stuff
" let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN %{bufnr("%")}'
" tmuxline
" need to detex tex files
let g:tex_flavor='tex'
autocmd BufRead,BufNewFile *.tex set filetype=tex
" Compilation
autocmd FileType javascript nnoremap <leader>r :!clear&&node %<CR>
autocmd FileType python nnoremap <leader>r :!clear&&python3 %<CR>
autocmd FileType c nnoremap <leader>r :!clear&&gcc -Wall -Werror % &&./a.out<CR>
autocmd FileType javascript nnoremap <leader>R :!clear&&node % > output.txt<CR>
autocmd FileType python nnoremap <leader>R :!clear&&python % > output.txt<CR>
autocmd FileType c nnoremap <leader>R :!clear&&gcc -Wall -Werror % &&./a.out > output.txt<CR>
autocmd FileType tex nnoremap <leader>r :!clear&&pdflatex % && open *.pdf<CR>
autocmd FileType matlab nnoremap <leader>r :!clear&&octave %<CR>


set noerrorbells
" set visualbell
