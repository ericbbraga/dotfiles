""""""""""""""""""""""""""""""""""""""""""""""""""
""" Plugin Manager
""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'https://github.com/kien/ctrlp.vim'
Plug 'https://github.com/scrooloose/nerdtree'
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/MattesGroeger/vim-bookmarks'
Plug 'https://github.com/junegunn/goyo.vim'
Plug 'https://github.com/kshenoy/vim-signature'
Plug 'https://github.com/ervandew/supertab'
Plug 'https://github.com/vim-scripts/Tabmerge'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/udalov/kotlin-vim'
Plug 'https://github.com/keith/swift.vim'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""
""" END
""""""""""""""""""""""""""""""""""""""""""""""""""
set textwidth=79
set tabstop=4
set expandtab
retab
set softtabstop=2
set shiftwidth=4
set autoindent
set autoread
set incsearch
set ignorecase
set ls=2
syntax on
filetype plugin indent on
filetype plugin on
filetype on
set completeopt=menuone,longest,preview
highlight ColorColumn ctermbg=darkgray


set foldmethod=indent
set foldlevel=99
set foldcolumn=1

set nu!
set cul
set hls!
set nowrap
colorscheme koehler

set completeopt=longest,menuone

nnoremap <F3> :execute "lvimgrep /" .expand("<cword>") . "/j " . bufname("%") <bar> lw <cr>
nmap <C-Left> gT <cr>
nmap <C-Right> gt <cr>
map <F4> :NERDTreeToggle<CR>
nmap <C-Up> :BookmarkPrev <CR>
nmap <C-Down> :BookmarkNext <CR>
nmap <C-B> :BookmarkToggle <CR>
nmap <S-p> :Goyo <CR>

let NERDTreeMapOpenInTab='\r'
let g:netrw_browsex_viewer= "xdg-open"

set listchars=tab:».,trail:.,extends:#,nbsp:.

augroup project
    autocmd!
    autocmd BufRead,BufNewFile *.h,*.c set filetype=c.doxygen
augroup END

let &path.="src/include,/usr/include/AL,"
execute pathogen#infect()
call pathogen#helptags()

" air-line
set laststatus=2 
set t_Co=256
set noshowmode

let g:airline_powerline_fonts=1

if !exists('g:airlinesymbols')
    let g:airlinesymbols = {}
endif

let g:airlineleftsep='»'
let g:airlineleftsep='?'
let g:airlinerightsep='«'
let g:airlinerightsep='?'
let g:airlinesymbols.linenr='?'
let g:airlinesymbols.linenr='?'
let g:airlinesymbols.linenr='¶'
let g:airlinesymbols.branch='? '
let g:airlinesymbols.paste='?'
let g:airlinesymbols.paste='Þ'
let g:airlinesymbols.paste='?'
let g:airlinesymbols.whitespace='?'
let g:airlinesymbols.space = '\ua0'

let g:airline#extensions#tabline#enabled = 1					

set timeoutlen=50

highlight BookmarkSign ctermbg=NONE ctermfg=160
let g:bookmark_highlight_lines = 1
let g:bookmark_no_default_key_mappings = 1

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" GitGutter Configuration
set updatetime=500
