set nocompatible " Run as VIM not VI

filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/vundle'

Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-fugitive'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-dispatch'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'git://github.com/guns/vim-sexp.git'
Plugin 'git://github.com/tpope/vim-sexp-mappings-for-regular-people.git'

Plugin 'tpope/vim-classpath'

Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'

Plugin 'derekwyatt/vim-scala'

call vundle#end()
filetype plugin indent on

" *.md as Markdown
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Quickly edit/reload the vimrc file
:map <leader>ev :e $MYVIMRC<CR>
:map <leader>sv :so $MYVIMRC<CR>

set hidden        " allow editing multiple files
set wrap          " wrap lines
set linebreak     " wrap at line breaks
set tabstop=2     " width of a tab
set softtabstop=2 " width of a tab
set expandtab     " replace tabs with spaces
set backspace=indent,eol,start	" allow backspacing over everything in insert mode
set number        " always show line numbers
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase, case-sensitive otherwise
set smarttab      " insert tabs on the start of a line according to shiftwidth, not tabstop
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type

set autoindent smartindent
set shiftwidth=2  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set copyindent    " copy the previous indentation on autoindenting
set noeb vb t_vb= " no beeping
set nobackup
set noswapfile

" set shell=/bin/bash    " use shell
" set shellcmdflag=-ic  " run interactive shell

syntax on
filetype plugin indent on

set foldcolumn=2	" Set the fold column, so we can use the mouse to open and close folds
set laststatus=2	" Always show status line.

" Instead of .gvimrc
if has("gui_running")
	call togglebg#map("<F5>")
	set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h16
	" Turn off toolbar
	set guioptions-=T
	" Turn on menu
	set guioptions+=m
end

set mouse=a
set clipboard=unnamed
set encoding=utf-8

" Colors
set t_Co=256
set background=light
let g:solarized_termtrans = 0
colorscheme solarized

map <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

" Rainbow parentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

" Clojure
let g:clojure_align_multiline_strings = 1

" nmap <silent> <leader>s :set spell!<CR> " spelling
cmap w!! w !sudo tee % >/dev/null " forgot sudo

" Expand %% to the path of the active buffer
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

