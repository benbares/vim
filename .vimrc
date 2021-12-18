"I really, really hope this works...


syntax on
let g:gruvbox_italic=1
colorscheme gruvbox

set guicursor=
set termguicolors
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nohlsearch
set nu
set nowrap
set hidden
set smartcase
set noswapfile
set nobackup
set undodir=~/.config/nvim/init.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes
let mapleader = " "

" Split windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

call plug#begin(~/.config/nvim/init.vim)

" Gruvy
Plug 'gruvbox-community/gruvbox'

" ITS TPOPE TIME
" Gitegration
Plug 'tpope/vim-fugitive'

"Comment stuff out aka fuck that line
Plug 'tpope/vim-commentary'

" Search and replace words because spelinng is hrad sumtimes
Plug 'tpope/vim-abolish

" fuzzy finder to find my fuzzy files
Plug 'kien/ctrlp.vim'

" minecraft skillz with %
" its block jumping..those are the skillz
Plug 'tmhedberg/matchit'

" FILESFILESFILES
Plug 'scrooloose/nerdtree', {'on':  'NERDTreeToggle' }

" status bar swag
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Pretty Colors for Syntax Highlighting
Plug 'sheerun/vim-polyglot'

" Intellisense engine...idk its just good
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Auto-close braces and scopes because why is this not already a default setting in every editor
Plug 'jiangmiao/auto-pairs'

" telescope requirements...
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

call plug#end()
