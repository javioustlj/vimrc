"==============================================================================
" Vim General options
"==============================================================================
" make vim behave in a more useful way instead of more Vi-compatible
" set leader key
let mapleader =","
set nocompatible
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,chinese,gbk,latin-1
if has("win32")
set fileencoding=chinese
else
set fileencoding=utf-8
endif

" To enable file type detection
filetype on
" To enable loading the indent file for specific file type
filetype indent on
" To enable loading the plugin files for specific file types
filetype plugin on
" Use twice the width of ASCII characters with East Asian Width Class Ambiguous
set ambiwidth=double
" allow backspacing over autoindent, line breaks, the start of insert
set backspace=indent,eol,start
" highlight the screen column of the cursor
set cursorcolumn
" Highlight the screen line of the cursor
set cursorline
" Use the appropriate number of spaces to insert a <Tab> in Insert mode
set expandtab
" highlight all matches
set hlsearch
" case insensitive
set ignorecase smartcase
" the windows always have a status line
set laststatus=2
" print the line number in front of each line
set number
" Show the line and column number of the cursor position
set ruler
" Number of spaces to use for each step of (auto)indent
set shiftwidth=8
" NUmber of spaces that a <Tab> counts for while performing editing operations
set softtabstop=8
" Number of spaces that a <Tab> in the file counts for
set tabstop=8
" lines will not wrap and only part of long lines will be displayed
set nowrap

set textwidth=120

"==============================================================================
" Spell checking
"==============================================================================
" When on spell checking will be done.
set spell
set spelllang=en,cjk

noremap <Leader>y "+y
noremap <Leader>p "+p
"===============================================================================
" Vim-plug
"===============================================================================
call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/VST'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/VisIncr'
Plug 'vim-scripts/VisIncr'
Plug 'tpope/vim-surround'
call plug#end()

syntax on
syntax enable
set background=dark
colorscheme solarized

" ================================================================
" nerdtree
" ================================================================
" file list
nmap <Leader>fl :NERDTreeToggle<CR>
"autocmd vimenter * NERDTree
" To delete the buffer when using a context menu to delete or rename a file
let NERDTreeAutoDeleteBuffer=1
" To enable or disable the 'Bookmarks' label 'Press ? for help' text
let NERDTreeMinimalUI=0
" To display hidden files
let NERDTreeShowHidden=1
" NERD tree windown is placed on the screen left
let NERDTreeWinPos="left"
" To change the size of the NERD tree when it is loaded
let NERDTreeWinSize=32
