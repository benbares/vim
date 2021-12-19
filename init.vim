"I really, really hope this works...

syntax on
set exrc
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
set ignorecase
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set signcolumn=yes

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

call plug#begin(~/.config/nvim/init.vim)

" Git stuff
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'stsewd/fzf-checkout.vim'

let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.8 } }
let $FZF_DEFAULT_OPTS='--reverse'
nnoremap <leader>gc :GCheckout<CR>

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

" Gruvy
Plug 'gruvbox-community/gruvbox'

call plug#end()

let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark


let mapleader = " "

" Remaps

" Split windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Window navigation
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

nmap <leader>pf :CtrlP<CR>
nnoremap <Leader>gd :GoDef<Enter>
nnoremap <Leader>pt :NERDTreeToggle<Enter>

fun! TrimWhitespace()
   let l:save = winsaveiew()
   keeppatterns %/\s\+$//e
   call winrestview(l:save)
endfun

augroup BEN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
