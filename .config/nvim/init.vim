call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox' " Theme
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'dense-analysis/ale' " synchronous Lint Engine
Plug 'neoclide/coc.nvim' , { 'branch' : 'release' } " code completion
Plug 'ekalinin/Dockerfile.vim', { 'for': 'docker' } " Syntax to docker
Plug 'hashivim/vim-terraform', { 'for': ['terraform', 'tf'] } " Syntax to terraform
Plug 'nvim-lua/plenary.nvim' 
Plug 'nvim-telescope/telescope.nvim'
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

" Global Sets """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on            " Enable syntax highlight
set nu               " Enable line numbers
set tabstop=2        " Show existing tab with 2 spaces width
set softtabstop=2    " Show existing tab with 2 spaces width
set shiftwidth=2     " When indenting with '>', use 2 spaces width
set expandtab        " On pressing tab, insert 2 spaces
"set smarttab         " insert tabs on the start of a line according to shiftwidth
"set smartindent      " Automatically inserts one extra level of indentation in some cases
set hidden           " Hides the current buffer when a new file is openned
set incsearch        " Incremental search
set ignorecase       " Ingore case in search
set smartcase        " Consider case if there is a upper case character
set scrolloff=8      " Minimum number of lines to keep above and below the cursor
set colorcolumn=100  " Draws a line at the given line to keep aware of the line size
set signcolumn=yes   " Add a column on the left. Useful for linting
set cmdheight=1      " Give more space for displaying messages
set updatetime=100   " Time in miliseconds to consider the changes
set encoding=utf-8   " The encoding should be utf-8 to activate the font icons
set nobackup         " No backup files
set nowritebackup    " No backup files
set splitright       " Create the vertical splits to the right
set splitbelow       " Create the horizontal splits below
set autoread         " Update vim after file update from outside
set mouse=a          " Enable mouse support
"filetype on          " Detect and set the filetype option and trigger the FileType Event
"filetype plugin on   " Load the plugin file for the file type, if any
""filetype indent on   " Load the indent file for the file type, if any

" Theme """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox
set background=dark

" Maps """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-b> :CocCommand explorer<CR>
"nmap <C-b> :NERDTreeToggle<CR>
nmap <S-Tab> :bp<Return>
nmap <Tab> :bn<Return>
let mapleader = ","

" List all presets
nnoremap <space>el :CocList explPresets

" Telescope """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <C-f> :Telescope live_grep<Return>

" ctrlp """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" AirLine """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1 " This is disabled by default; add the following to your vimrc to enable the extension
let g:airline#extensions#tabline#left_sep = ' ' " Separators can be configured independently for the tabline, so here is how you can define
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_powerline_fonts = 1
let g:airline_statusline_ontop= 0
let g:airline#extensions#tabline#show_buffers = 1 
let g:airline#extensions#tabline#formatter = 'jsformatter'
let g:airline_solorized_bg='dark'
let g:airline_theme='sobrio'

" COC """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_global_extensions = [
\ 'coc-explorer',
\ 'coc-pairs',
\ 'coc-json',
\ 'coc-tsserver',
\ 'coc-yaml',
\ 'coc-highlight',
\ '@yaegassy/coc-nginx',
\ 'coc-sh',
\ 'coc-markdown-preview-enhanced'
"\ 'coc-markdownlint'
\ ]

" NERDTree """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeShowHidden = 1 " show hidden files

" Autocmd """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"function! HighlightWordUnderCursor()
"    if getline(".")[col(".")-1] !~# '[[:punct:][:blank:]]'
"        exec 'match' 'Search' '/\V\<'.expand('<cword>').'\>/'
"    else
"        match none
"    endif
"endfunction

"autocmd! CursorHold,CursorHoldI * call HighlightWordUnderCursor()

" Coc Explorer """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_explorer_global_presets = {
\   '.vim': {
\     'root-uri': '~/.vim',
\   },
\   'cocConfig': {
\      'root-uri': '~/.config/coc',
\   },
\   'tab': {
\     'position': 'tab',
\     'quit-on-open': v:true,
\   },
\   'tab:$': {
\     'position': 'tab:$',
\     'quit-on-open': v:true,
\   },
\   'floating': {
\     'position': 'floating',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingTop': {
\     'position': 'floating',
\     'floating-position': 'center-top',
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingLeftside': {
\     'position': 'floating',
\     'floating-position': 'left-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'floatingRightside': {
\     'position': 'floating',
\     'floating-position': 'right-center',
\     'floating-width': 50,
\     'open-action-strategy': 'sourceWindow',
\   },
\   'simplify': {
\     'file-child-template': '[selection | clip | 1] [indent][icon | 1] [filename omitCenter 1]'
\   },
\   'buffer': {
\     'sources': [{'name': 'buffer', 'expand': v:true}]
\   },
\ }
