syntax on
filetype on
filetype plugin indent on

set encoding=utf-8

colo Tomorrow-Night-Eighties

" there are many known issues involving apparently
" set modelines = 0

" Set 7 lines to the cursor - when moving vertically using j/k
set so=10

" Always show current position
set ruler
set colorcolumn=80
set number
set relativenumber
set cursorline

" Height of the command bar
set cmdheight=2

" SEARCHING
set ignorecase
set smartcase
set hlsearch
set incsearch

" Show matching brackets when text indicator is over them
set showmatch

" TABS AND SPACING
set softtabstop=4 shiftwidth=4 expandtab autoindent
set tabstop=4

" Status line settings
set showmode
set showcmd
set laststatus=2
set statusline=\ %F\ %=\ Line:\ %l\ \ Column:\ %c

set wildmenu
set wildmode=list:longest

set ttyfast

set undofile

" autosave
au FocusLost * nested silent! wa

"Configure backsapce so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

let mapleader="\<Space>"
let g:mapleader="\<Space>"

inoremap jk <esc>
inoremap kj <esc>
vnoremap jk <esc>
vnoremap kj <esc>
nnoremap <leader><space> :nohlsearch<CR>

" Fast save
nmap <leader>fs :w!<CR>
"Quick exit without saving
nnoremap ZX ZQ
nnoremap XZ ZQ

" noremap cop :RainbowToggle<CR>

" Easier access, no ops to train
nnoremap B ^
nnoremap E $
nnoremap $ <nop>
nnoremap & <nop>

map <leader>ss :setlocal spell!<cr>

" FOLDING
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent

" highlight last inserted text
nnoremap gV '[v']

" Toggle relative/absolute line number
nnoremap <leader>l :call ToggleNumber()<CR>

" save session
nnoremap <leader>s :mksession<CR>

" Custom Functions {{{
function! ToggleNumber()
    if(&relativenumber == 1)
        set norelativenumber
        set number
    else
        set relativenumber
    endif
endfunc
