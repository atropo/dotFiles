filetype plugin indent on
set nocompatible
set autoread

"Setup di vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


" Home as default directory

" let Vundle manage Vundle
"  " required! 
Bundle 'gmarik/vundle'

"Bundle su github
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'
Bundle 'scrooloose/nerdtree'
Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'skroll/vim-taghighlight'
Bundle 'tsaleh/vim-matchit'
Bundle 'Valloric/MatchTagAlways'
Bundle 'scrooloose/nerdcommenter'

Bundle 'vim-scripts/SearchComplete'
Bundle 'vim-scripts/LustyJuggler'
Bundle 'benmills/vimux'
Bundle 'vim-scripts/IndexedSearch'

"Vim scripts-repos
Bundle 'L9'
Bundle 'FuzzyFinder'

"Colorschemes
Bundle 'pyte'
Bundle 'altercation/vim-colors-solarized'

let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set modelines=0

set ai "Auto ident
set si "Smart ident
set wrap "Wrap lines

"MYSQL file type for SQL files
let g:sql_type_default = 'mysql'

"""""""""""""" Ctrl-P config
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/build/*  
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn|build)$',
  \ 'file': '\v\.(exe|so|dll|class|jar)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'r'
"let g:ctrlp_user_command ='ack -f'

"Turn on the wild menu
set wildmenu
set wildmode=list:longest,full

"Ack-grep plugin configuration
let g:ackprg="ack-grep -H --nocolor --nogroup --column"

"""""""""""""""""""""""""""""""""""""""""
" ONLY FOR GVIM
""""""""""""""""""""""""""""""""""""""""
" Set extra options when running in GUI mode
if has("gui_running")
	cd  ~
	set background=dark
	"No scrollbar
	set guioptions-=r
	set guioptions-=R
	set guioptions-=l
	set guioptions-=L
	set guioptions-=T
	set guioptions-=m
	colorscheme solarized
	set cursorline
	set showmode
	set showcmd
endif

"""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
""""""""""""""""""""""""""""""""""""""""

"LustyJuggler buffer explorer remapping
map <leader>b : LustyJuggler<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

"
" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

"Search word under cursor with ack
noremap <Leader>a :Ack <cword><cr>




" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>


" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%



"""""""""""""""""""""""""""""""""""
" Status line
"""""""""""""""""""""""""""""""""""
set laststatus=2

" Ignore case when searching
set ignorecase
set smartcase
set hlsearch

"NERDTree
let NERDChristmasTree = 1
let NERDTreeWinSize = 45
nmap <F12> :NERDTreeToggle<CR>
nmap <F11> :TagbarToggle<CR>
map <F2> <Esc>:1,$!xmllint --format -<CR>


" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


"Highlight degli header degli script NSIS
augroup filetypedetect
au BufNewFile,BufRead *.nsh setf nsis
augroup END 

"Matchit
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'jsp' : 1,
    \}
