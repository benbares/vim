syntax on
set guicursor=
set termguicolors
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nohlsearch
set nu
set rnu
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
set clipboard=unnamedplus
set colorcolumn=80
set cmdheight=2
set updatetime=300

call plug#begin('~/.config/nvim/plugs')

" VIM command games
Plug 'ThePrimeagen/vim-be-good'

" Git stuff
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
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
Plug 'tpope/vim-abolish'

" Extra commands
Plug 'tpope/vim-eunuch'

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

"lsp stuff
Plug 'neovim/nvim-lspconfig'
Plug 'microsoft/language-server-protocol'
Plug 'nvim-lua/completion-nvim'

" Gruvy
Plug 'gruvbox-community/gruvbox'

call plug#end()

let g:gruvbox_italic=1
colorscheme gruvbox
set background=dark

set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = {'exact', 'substring', 'fuzzy'}

lua << EOF
require("lspconfig").pylsp.setup{}
EOF

set completeopt-=preview

" use omni completion provided by lsp
autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc

let mapleader = " "

" REMAPS

" Window navigation
map <leader>h :wincmd h<CR>
map <leader>j :wincmd j<CR>
map <leader>k :wincmd k<CR>
map <leader>l :wincmd l<CR>

nmap <leader>pf :CtrlP<CR>
nnoremap <Leader>gd :GoDef<Enter>
nnoremap <Leader>pt :NERDTreeToggle<Enter>

nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>

inoremap <expr> ; ((pumvisible())?("\<C-n>"):(";"))
inoremap <expr> ' ((pumvisible())?("\<C-p>"):("'"))

" COMMANDS
  autocmd FileType json syntax match Comment +\/\/.\+$+
