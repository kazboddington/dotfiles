set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set encoding=utf-8

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

set t_Co=256
syntax on
set tw=120
set nowrap
set scrolloff=10
set background=dark
set number 
set hlsearch
set clipboard=unnamed

filetype plugin indent on
" show existing tab with 8 spaces width
set tabstop=8
" when indenting with '>', use 8 spaces width
set shiftwidth=8
" On pressing tab, insert 8 spaces
set expandtab

let &colorcolumn="80,".join(range(120,999),",")
highlight ColorColumn ctermbg=236 guibg=#000000

Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1

"Plugin 'marijnh/tern_for_vim'
Plugin 'altercation/vim-colors-solarized'

Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'bling/vim-bufferline'
Plugin 'Valloric/YouCompleteMe'
let g:ycm_show_diagnostics_ui = 0
Plugin 'airblade/vim-gitgutter'
Plugin 'simnalamburt/vim-mundo'

call vundle#end()
map <C-n> :NERDTreeToggle<CR>
set mouse=a

" $HOME/.vimrc
set directory=$HOME/.vim/swapfiles//

set hidden

let g:airline_powerline_fonts = 1
let g:airline_theme='deus'
set undofile                    " Save undos after file closes
set undodir=$HOME/.vim/undo//   " where to save undo histories
set undolevels=1000             " How many undos
set undoreload=10000            " number of lines to save for undo
