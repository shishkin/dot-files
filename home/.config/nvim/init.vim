call plug#begin()

Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline-themes'

Plug '/usr/local/opt/fzf'

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'hecal3/vim-leader-guide'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-airline/vim-airline'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'elmcast/elm-vim', { 'for': 'elm' }

Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch': 'next',
  \ 'do': './install.sh'
  \ }

call plug#end()

set noswapfile
set hidden " hide inactive buffers
set linebreak " wrap at line breaks
set tabstop=4 " width of a tab
set softtabstop=2 " width of a tab
set shiftwidth=2  " number of spaces to use for autoindenting
set number " show line numbers
set showmatch " set show matching parenthesis
set mouse=a
set clipboard+=unnamedplus
set listchars=tab:⇥\ ,trail:·,nbsp:⎵
set list

set background=light
colorscheme solarized

let g:airline_theme = 'light'
let g:airline_powerline_fonts = 1

map <F2> :NERDTreeToggle<CR>
let NERDTreeShowHidden = 1

let g:mapleader = ' '
nnoremap <leader> :<C-U>LeaderGuide ' '<CR>

let g:deoplete#enable_at_startup = 1

let g:elm_format_autosave = 1

let g:LanguageClient_serverCommands = {
  \ 'javascript': ['javascript-typescript-stdio'],
  \ }

nnoremap <silent> lc :call LanguageClient_contextMenu()<CR>
nnoremap <silent> lh :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> ld :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> lr :call LanguageClient_textDocument_rename()<CR>

