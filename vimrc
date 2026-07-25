" 1. Tell Vim-Plug what plugins to load
call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
call plug#end()

" 2. Core UI Layout settings
set background=dark

" 3. Apply the Gruvbox theme safely
autocmd vimenter * colorscheme gruvbox

" --- User Interface ---
" set number                " Show line numbers
" set relativenumber        " Corrected option name (was relativeLineNumbers)
set hlsearch              " Highlight search results
set incsearch             " Show search matches as you type
set wildmenu              " Visual autocomplete for command menu
" set showmatch             " Highlight matching brackets ((), [], {})

" --- Tabs & Indentation ---
set expandtab             " Convert tabs to spaces
set tabstop=4             " Insert 4 spaces for a tab
set shiftwidth=4          " Number of spaces for auto-indenting
set autoindent            " Copy indent from current line when starting a new one
set smartindent           " Intelligent indentation for code

" --- System & Performance ---
syntax on                 " Enable syntax highlighting (best practice format)
filetype plugin indent on " Enable file type detection, plugins, and indents
set mouse=a               " Enable mouse support in all modes
set clipboard=unnamedplus " Use system clipboard (requires vim-gtk or vim-gnome)
set noswapfile            " Disable swap files (keeps directories clean)
set backspace=indent,eol,start " Fix backspace behavior on some Linux distros

" --- Key Remappings (Quality of Life) ---
" Clear search highlights by pressing Esc in normal mode
nnoremap <esc> :noh<return><esc>
