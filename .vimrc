"optional
set cursorline
set showmode

"charactor display
set list
set listchars=tab:>-,trail:-,extends:>,precedes:<,nbsp:.
"highlight WhitespaceEOL ctermbg=red guibg=red
"match WhitespaceEOL /\s\+$/

"indent
set tabstop=4
set shiftwidth=4
set autoindent
"set expandtab

"keymap
imap jk <ESC>
imap <C-o> <Esc>o
"inoremap <C-h> <Left>
imap <C-j> <Down>
imap <C-k> <Up>
imap <C-l> <Right>
nmap <Space> :
