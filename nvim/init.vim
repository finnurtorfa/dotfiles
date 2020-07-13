"Enable filetype plugin and indent
filetype plugin indent on

" Enable syntax highlighting
syntax on

set hidden            " if hidden is not set, TextEdit might fail.
set cmdheight=2       " Better display for messages
set updatetime=300    " Smaller updatetime for CursorHold & CursorHoldI
set shortmess+=c      " don't give |ins-completion-menu| messages.
set signcolumn=yes    " always show signcolumns
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

au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

autocmd! BufWritePost * Neomake   " Run Neomake on every write

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

" Non-recursive mapping commands for normal mode
nnoremap Q <nop>                          " No Ex mode
nnoremap <Tab> :bnext<CR>                 " Switch to next tab
nnoremap <S-Tab> :bprev<CR>               " Switch to previous tab: Shift-Tab
nnoremap <NUL> :nohlsearch<CR>            " Switch to previous tab: Ctrl-Space
" Remove trailing whitespace when I press F3
nnoremap <silent> <F3> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nnoremap <C-t> :CtrlPTag<cr>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)
nmap <leader>f  <Plug>(coc-format-selected)

" Neomake normal mode mappings and configuration
nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:neomake_c_enabled_makers = ['gcc']
let g:neomake_go_enabled_makers = [ 'go', 'golangci_lint', 'golint' ]


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

" vim-go configuration
" disable vim-go :GoDef short cut (gd)
" this is handled by LanguageClient [LC]
let g:go_def_mapping_enabled = 0
let g:go_fmt_command = "goimports"
let g:go_auto_type_info = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
let g:ale_fixers = {
 \ 'javascript': ['eslint']
 \ }
let g:ale_fix_on_save = 1

" Plugins to install
call plug#begin('~/.config/nvim/plugged/')
Plug 'benekastah/neomake'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'othree/html5.vim'
Plug 'Raimondi/delimitMate'
Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
Plug 'sjl/badwolf'
Plug 'udalov/kotlin-vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', { 'do': './install.sh' }
"Plug 'Shougo/deoplete.nvim', { 'do': 'UpdateRemotePlugins'}
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" Color scheme
colorscheme badwolf

let g:badwolf_html_link_underline = 0   " Turn off HTML link underlining
let g:badwolf_css_props_highlight = 1   " Turn on CSS properties highlighting

" let g:deoplete#enable_at_startup = 1

" coc.vim
"


"
