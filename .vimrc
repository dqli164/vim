" optional
set cursorline
set bg=dark
set showmode
" for nerd commenter
filetype plugin on
" cancel comment when return
set fo-=r

" Move a line of text using ALT+[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

"" search
set ignorecase
set smartcase
" autocmd
" auto reload .vimrc when save
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" highlight search result
set hlsearch
set incsearch
nmap <leader>nh :noh<CR>

" charactor display
set list
set listchars=tab:>-,trail:-
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

" indent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
" set expandtab
" autocmd FileType make setlocal noexpandtab
nmap <tab> V>
nmap <S-tab> V<
vmap <tab> >gv
vmap <S-tab> <gv

" keymap
imap jk <ESC>
imap <C-o> <Esc>o
imap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>
"nmap <Space> :

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" close all the buffers
map <leader>ba :bufdo bd<cr>

map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>


" useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext<cr>

" auto-pairs
" https://github.com/jiangmiao/auto-pairs
let g:AutoPairsCenterLine = 0

" easy-align
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" nerd commenter
" let g:NERDCustomDelimiters = {'go': {'left': '//'}}

"plugins
call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'
"Plug 'scrooloose/nerdcommenter'


call plug#end()
