set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree.git'
Plugin 'joshdick/onedark.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'sheerun/vim-polyglot'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Activate auto filetype detection
syntax on
filetype plugin indent on
filetype on
filetype plugin on
syntax enable

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Theme
colorscheme onedark
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }

" http://stackoverflow.com/questions/58774/how-do-you-paste-multiple-tabbed-lines-into-vi
set pastetoggle=<F6>    " F6 toggles paste mode
set ignorecase          " Don't care about case...
set smartcase		" ... unless the query contains upper case characters
set autoindent		" Enable automatic indenting for files with ft
set
set nowrap		" No fake carriage returns
set showcmd		" Show command in statusline as it's being typed
set showmatch		" Jump to matching bracket
set ruler		" Show row,col %progress through file
set number              " Show line numbers
set laststatus=2	" Always show filename (2 is always)
set hidden	    	" Let us move between buffers without writing them.
" Don't :q! or :qa! frivolously!
set softtabstop=4	" Vim sees 4 spaces as a tab
set shiftwidth=4	" < and > uses spaces
set expandtab		" Tabs mutate into spaces
set foldmethod=indent	" Default folding
set backspace=indent,eol,start  " Make backspace work like other editors.
set fileencoding=utf8
set fileencodings=utf8,cp1251
set hlsearch            " highlight search terms
set incsearch           " show search matches as you type

" http://nvie.com/posts/how-i-boosted-my-vim/
set nobackup            " do not write backup and swap files
set noswapfile
