"==========================================
" Title: Vimrc-for-Linux
" Github Project Link: https://github.com/zanxj/Vimrc
" Gitee  Project Link: https://gitee.com/zanxj/vimrc
" Author:  zanxj
" Version: 0.3
" ReadMe: README.md
" Last_modify: 2021-05-26
" Desc: A simple vim configuraton file, no plugins.
"==========================================


" Encoding
set encoding=utf-8
set termencoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gbk,gb18030,big5,euc-jp,euc-kr,latin1
set formatoptions+=m
set formatoptions+=B
set ffs=unix,dos,mac


" Syntax
set nocompatible                  " Not compatible with Vi.
syntax on                         " Enable syntax highlighting.
set cursorline                    " The line where the cursor is currently located.
set cursorcolumn                  " The column where the cursor is currently located.


" Basis Options
set magic                         " For regular expressions turn magic on.
set history=1000                  " Operation history.
set nocompatible                  " Remove vi consistency.
set autoread                      " Automatically loaded when the file is changed.
set shortmess=atI                 " Do not display welcome prompts at startup.
set title                         " Set the window’s title, reflecting the file currently being edited.
set nobackup                      " Don't keep backup files.
set backspace=indent,eol,start    " Allow backspacing over indention, line breaks and insertion start.
set confirm                       " Display a confirmation dialog when closing an unsaved file.
set nomodeline                    " Ignore file’s mode lines, use vimrc configurations instead.
set noerrorbells                  " Disable beep on errors.
set visualbell t_vb=              " Prohibit error reporting.
set whichwrap+=<,>,h,l
set t_vb=
set tm=500
set paste
set shortmess=atI


" Display
set mouse=a                       " Enable mouse for scrolling and resizing.
set number                        " Display line number.
set ruler                         " Display ruler.
set nowrap                        " Does't automatically wrap.
set showcmd                       " Display input command.
set showmode                      " Open mode display.
set showmatch                     " Show bracket pairing.
set matchtime=3                   " Match the time when the brackets are highlighted.
set display+=lastline             " Always try to show a paragraph’s last line.
set linebreak                     " Avoid wrapping a line in the middle of a word.
set scrolloff=5                   " The number of screen columns to keep to the left and right of the cursor.
set laststatus=2                  " Always display the status bar.
set background=dark               " Use colors that suit a dark background.
colorscheme desert                " Change color scheme.
set selection=inclusive           " Including selection
set selectmode=mouse,key          " Select mode including mouse and key
set completeopt=longest,menu      " Intelligent completion.
set wildmenu                      " Display command line’s tab complete options as a menu.
set wildmode=longest,list,full    " TAB command auto completion configuration.
set wildignore=*.o,*~,*.pyc,*.class    "Ignore files matching these patterns when opening files based on a glob pattern.
set statusline=%<%f\ %h%m%r%=%{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\ \"}%k\ %-14.(%l,%c%V%)\ %P


" Indention
set autoindent
set smartindent
set smarttab
set shiftround                    " When shifting lines, round the indentation to the nearest multiple of “shiftwidth”.
set expandtab                     " Convert tab to space.
set tabstop=4                     " Indent using four spaces.
set shiftwidth=4                  " When shifting, indent using four spaces.
set softtabstop=4                 " Use 4 spaces in both insert mode and backspace.


" Search
set hlsearch                      " Enable search highlighting.
set ignorecase                    " Ignore case when searching.
set incsearch                     " Incremental search that shows partial matches.
set smartcase                     " Automatically switch search to case-sensitive when search query contains an uppercase letter.


" Code Folding
"set foldenable                    " Folding by default.
"set foldmethod=indent             " Fold based on indention levels.
"set foldnestmax=3                 " Only fold up to three nested levels.


" Mark the color of rows and columns
highlight CursorLine cterm=UnderLine ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=Magenta ctermfg=white guibg=NONE guifg=NONE


" Symbol completion
"inoremap ' ''<ESC>i
"inoremap " ""<ESC>i
"inoremap ( ()<ESC>i
"inoremap [ []<ESC>i
"inoremap { {<CR>}<ESC>O


" Filetype
filetype on                       " Turn on file type detection


" Cancel all indentation
"filetype indent off              " Disabling file type based indentation for a specific file type.
"set noai nocin nosi inde=        " Disabling file type based indentation for all file types(noautoindent nocindent nosmartindent indentexpr=).
