" PERSONAL-VIM SETUP

"*********************************************************************
"" Basic Setup
"*********************************************************************
"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set ttyfast

"" Fix backspace indent
set backspace=indent,eol,start

"" Tabs. May be overridden by autocmd rules
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"" Map leader to
let mapleader=' '

"" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

set fileformats=unix,dos,mac

set clipboard=unnamedplus

if exists('$SHELL')
  set shell=$SHELL
else
  set shell=/bin/sh
endif

"*********************************************************************
"" Visual Settings
"*********************************************************************
syntax on
set ruler
set number

"" Better command line completion
set wildmenu

"" Disable blinking cursor.
set gcr=a:blinkon0
set scrolloff=3

"" Status bar
set laststatus=2

"" Use modeline overrides
set modeline
set modelines=10

set title
set titleold="Terminal"
set titlestring=%F

set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c)\

if exists("*fugitive#statusline")
  set statusline+=%{fugitive#statusline()}
endif

"*********************************************************************
"" Quality of life
"*********************************************************************
"" Abbrevs
"" No one is really happy until you have this shortcuts they
cnoreabbrev W! w!
cnoreabbrev Q! q!
cnoreabbrev Qall! qall!
cnoreabbrev Wq wq
cnoreabbrev Wa wa
cnoreabbrev wQ wq
cnoreabbrev WQ wq
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev Qall qall

"*********************************************************************
"" Mappings
"*********************************************************************
"" Split
noremap <leader>h :<C-u>split<CR>
noremap <leader>v :<C-u>vsplit<CR>

"" NERDTree mapping
nnoremap <silent> <leader>fe :Ex<CR>

"" Buffer nav
noremap <leader>q :bp<CR>
noremap <leader>e :bn<CR>
noremap <leader>d :bd<CR>

"" Set working directory
nnoremap <leader>. :lcd %:p:h<CR>

"" Switching windows
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Vmap for maintain visual mode after shifting > and <
vmap < <gv
vmap > >gv

"" Move visual block
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"" Clean search (Hightlight)
nnoremap <silent> <leader>c :noh<cr>

"" Search mapping
nnoremap n nzzzv
nnoremap N Nzzzv

"*********************************************************************
"" Commands
"*********************************************************************
"" remove trailing whitespaces
command! FixWhitespace :%s/\s\+$//e
