"" General
set number          " Show line numbers
set linebreak       " Break lines at word (requires Wrap lines)
set showbreak=+++   " Wrap-broken line prefix
set colorcolumn=81
"set textwidth=100   " Line wrap (number of cols)
set showmatch       " Highlight matching brace

set hlsearch        " Highlight all search results
set smartcase       " Enable smart-case search
set ignorecase      " Always case-insensitive
set incsearch       " Searches for strings incrementally

set autoindent      " Auto-indent new lines
set tabstop=4       " Width
set softtabstop=4   " Number of spaces per Tab
set shiftwidth=4    " Number of auto-indent spaces
set expandtab       " use spaces instead of tabs
set smartindent     " Enable smart-indent
set smarttab        " Enable smart-tabs

"" Advanced
set ruler           " Show row and column ruler information
set list
set listchars=eol:$,tab:>-

set undolevels=1000     " Number of undo levels
set backspace=indent,eol,start  " Backspace behaviour

filetype on
filetype plugin on
filetype indent on

set mouse=a " Enable full mouse support


" --- start colorscheme ---
colorscheme habamax

highlight Todo            ctermfg=Black ctermbg=Yellow guifg=Black guibg=Yellow
highlight ExtraWhitespace ctermfg=NONE  ctermbg=Red    guifg=NONE  guibg=Red
match ExtraWhitespace /\s\+$/
" --- end colorscheme ---


" Commands
command CCfile execute "read ~/.vim/templates/c_file.template"
command CCfunc execute "read ~/.vim/templates/c_function.template"
command CCblank execute "read ~/.vim/templates/c_blank.template"
command CCheader execute "read ~/.vim/templates/c_header.template"
command SpellDE execute "set spell spelllang=de"
command SpellEN execute "set spell spelllang=en"
command TrimEmpty execute ':%s/^\s\+$//g'
command Trim execute ':%s/\s\+$//g'

" --- start youcompleteme plugin ---
nnoremap <C-g> :YcmCompleter GoTo<CR>
" --- end youcompleteme plugin ---

" --- start nerdtree plugin ---
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" --- end nerdtree plugin ---


" --- start tagbar plugin ---
nmap <F8> :TagbarToggle<CR>
" --- end targbar plugin ---


" --- start CtrP plugin ---
vnoremap <C-p> :CtrP
" --- end CtrP plugin ---



au BufRead,BufNewFile *.bb set filetype=bb
au BufRead,BufNewFile *.c3 set filetype=c3
let g:c_syntax_for_h = 1

" shortcut for easy search-and-replace a selected text
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>


" --- pathogen plugin manager ---
execute pathogen#infect()
