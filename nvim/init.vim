"Enable filetype plugin and indent
filetype plugin indent on

" Enable syntax highlighting
syntax on

set encoding=utf8     " UTF-8 Encoding
set mouse=nc          " Enable the mouse only in normal and command-line mode
set textwidth=110     " 80 character textwidth
set autoindent        " Enable Auto indentation
set nosmartindent     " Disable smartindent
set showmatch         " Show a matching bracket({}, (), [], etc...)
set backup            " Enable backup
set backupdir=/tmp    " Set the backup directory
set directory=/tmp    " Place the backup file in the /tmp directory
set history=50        " keep 50 lines of command line history
set ruler             " show the cursor position all the time
set cursorline        " highlight current line
set incsearch         " Search incrementally
set hlsearch          " Highlight matches when searching
set ignorecase        " Ignore case when searchin
set number            " Precede each line with it's linenumber
set tabstop=4         " Number of spaces a tab accounts for
set smarttab          " Tabs for indentation, spaces for alignment
set expandtab         " Replace tabs with spaces
set softtabstop=4     " Makes spaces feel like real tabs
set shiftwidth=4      " How many spaces in a tab
set wildmenu          " command line completion
set viminfo='20,\"50  " read/write a .viminfo file, don't store
                      " more than 50 lines of registers
set modelines=0       " Prevent modelines in files from being
                      " evaluated (avoids a potential security
                      " problem wherein a malicious user could write
                      " a hazaright dous modeline into a file) (override
                      " default value of 5).
set lazyredraw        " Only redraw when we need to

autocmd! BufWritePost * Neomake   " Run Neomake on every write

" Non-recursive mapping commands for normal mode
nnoremap Q <nop>                          " No Ex mode
nnoremap <Tab> :bnext<CR>                 " Switch to next tab
nnoremap <S-Tab> :bprev<CR>               " Switch to previous tab: Shift-Tab
nnoremap <NUL> :nohlsearch<CR>            " Switch to previous tab: Ctrl-Space
" Remove trailing whitespace when I press F3
nnoremap <silent> <F3> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <C-t> :CtrlPTag<cr>

" Neomake normal mode mappings and configuration
nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning

let g:neomake_c_enabled_makers = ['gcc']

" Airline configuration
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'
let g:airline_left_sep = ' '
let g:airline_left_alt_sep = '|'
let g:airline_right_sep = ' '
let g:airline_right_alt_sep = '|'
let g:airline_theme= 'powerlineish'

" Ctrl-P configuration
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|d)$',
  \ }

" Plugins to install
call plug#begin('~/.config/nvim/plugged/')
Plug 'benekastah/neomake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'ervandew/supertab'
Plug 'othree/html5.vim'
Plug 'Raimondi/delimitMate'
Plug 'vim-scripts/a.vim'
Plug 'jimenezrick/vimerl'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'sjl/badwolf'
Plug 'mileszs/ack.vim'
Plug 'udalov/kotlin-vim'
Plug 'tpope/vim-surround'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
Plug 'Shougo/deoplete.nvim'
call plug#end()

" Color scheme
colorscheme badwolf

let g:badwolf_html_link_underline = 0   " Turn off HTML link underlining
let g:badwolf_css_props_highlight = 1   " Turn on CSS properties highlighting

let g:deoplete#enable_at_startup = 1

