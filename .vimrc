set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'

set t_Co=256
syntax on
set tw=120
set nowrap
set scrolloff=5
set background=dark
set number 

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=236 guibg=#000000

Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Raimondi/delimitMate'
Plugin 'marijnh/tern_for_vim'
Plugin 'altercation/vim-colors-solarized'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'

map <C-n> :NERDTreeToggle<CR>
