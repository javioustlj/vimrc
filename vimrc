"==============================================================================
" Vim General options
"==============================================================================
" make vim behave in a more useful way instead of more Vi-compatible
set nocompatible

set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,chinese,gbk,big5,latin-1
" Language to use for menu translation.
" set langmenu=none
" To enable file type detection
filetype on
" To enable loading the indent file for specific file type
filetype indent on
" To enable loading the plugin files for specific file types
filetype plugin on
" Use twice the width of ASCII characters with East Asian Width Class Ambiguous
" set ambiwidth=double
" allow backspacing over auto indent, line breaks, the start of insert
set backspace=indent,eol,start
" highlight the screen column of the cursor
set cursorcolumn
" Highlight the screen line of the cursor
set cursorline
" Use the appropriate number of spaces to insert a <Tab> in Insert mode
set laststatus=2
" print the line number in front of each line
set number
" Show the line and column number of the cursor position
set ruler
" lines will not wrap and only part of long lines will be displayed
set nowrap
" Don't ring the bell for error messages (include hitting <Esc> in Normal mode).
set noerrorbells
" raise a dialog asking if you wish to save the current files
set confirm
" Copy indent from current line when starting a new line
set autoindent
" Enables automatic C program indenting.
set cindent
" Number of screen lines to use for the command-line.
set cmdheight=2
" When a bracket is inserted, briefly jump to the matching one.
set noshowmatch


" set textwidth=120
"==============================================================================
" Search
"==============================================================================
" highlight all matches
set hlsearch
" case insensitive
set ignorecase smartcase
" Show where the pattern, as it was typed so far, matches.
set noincsearch
"==============================================================================
" <Tab>
"==============================================================================
" In Insert mode: Use the appropriate number of spaces to insert a <Tab>.
set expandtab
" a <Tab> in front of a line inserts blanks according to shiftwidth.
set smarttab
" Number of spaces to use for each step of (auto)indent
set shiftwidth=2
" Number of spaces that a <Tab> counts for while performing editing operations
set softtabstop=2
" Number of spaces that a <Tab> in the file counts for
set tabstop=2
"==============================================================================
" Spell checking
"==============================================================================
" When on spell checking will be done.
set spell
set spelllang=en,cjk

"==============================================================================
" Shell
"==============================================================================
" set shell=powershell
" set shellcmdflag=-c

"==============================================================================
" IPA
"==============================================================================
digraphs ch 643
digraphs ja 658
digraphs ee 720
digraphs di 618
digraphs pa 593
digraphs aw 596
digraphs up 650
digraphs /\ 652
digraphs x3 604

"==============================================================================
" Trail space and tab
"==============================================================================
highlight UnwanttedTab ctermbg=red guibg=darkred
highlight TrailSpace guibg=red ctermbg=darkred
match UnwanttedTab /\t/
match TrailSpace /\s\+\%#\@<!$/
autocmd ColorScheme * highlight UnwanttedTab ctermbg=red guibg=darkred
autocmd ColorScheme * highlight TrailSpace guibg=red ctermbg=darkred
colorscheme torte

"==============================================================================
" key mapping
"==============================================================================
" set leader key
let mapleader =","

noremap <Leader>y "+y
noremap <Leader>p "+p
noremap <F5> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"
    if &filetype == 'c'
        exec "!gcc % -o %<"
        exec "!time /t ./%<"
    elseif &filetype == 'cpp'
        exec "!g++ % -w -g"
        exec "!a"
    elseif &filetype == 'python'
        exec "!time python %"
    endif
endfunc
"==============================================================================
" Vim-plug
"==============================================================================
call plug#begin('~/.vim/plugged')
Plug 'vim-scripts/VST'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-scripts/VisIncr'
Plug 'tpope/vim-surround'
call plug#end()

"==============================================================================
" color
"==============================================================================
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
