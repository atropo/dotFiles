set nocompatible
nmap <leader>gs :Gstatus<cr>
set number
filetype off
set autoread
autocmd BufEnter * silent! lcd %:p:h
set guiheadroom=100

"Setup di vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Set history to 1000
set history=1000


" let Vundle manage Vundle
"  " required! 
Bundle 'gmarik/vundle'

"Bundle su github
Bundle 'mattn/emmet-vim'
Bundle 'bling/vim-airline'
Bundle 'easymotion/vim-easymotion'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
Bundle 'skroll/vim-taghighlight'
Bundle 'tsaleh/vim-matchit'
Bundle 'Valloric/MatchTagAlways'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-repeat'
Bundle 'Raimondi/delimitMate.git'
Bundle "leshill/vim-json"
Bundle "d11wtq/ctrlp_bdelete.vim.git"
Bundle "mhinz/vim-signify"
Bundle "mhinz/vim-startify"
Bundle "junegunn/limelight.vim"
Bundle "justinmk/vim-gtfo"
Bundle "vim-scripts/fontsize"
Bundle "nathanaelkane/vim-indent-guides"
Bundle "vasconcelloslf/vim-interestingwords"
Bundle "shumphrey/fugitive-gitlab.vim"
Bundle 'gabesoft/vim-ags.git'
Bundle 'gcmt/taboo.vim'
Bundle 'Valloric/ListToggle'
Bundle 'airblade/vim-rooter'
Bundle 'vim-scripts/draw.vim.git'
Bundle 'sstallion/vim-cursorline'
Bundle 'andreshazard/vim-freemarker'



"Taboo configuration
set guioptions-=e
let g:taboo_tab_format='[%N]%f%m '  

"Snippets support
Plugin 'SirVer/ultisnips'
"Snippets db
Plugin 'honza/vim-snippets'

"Javascript / Angular
Bundle "pangloss/vim-javascript"
Bundle "othree/javascript-libraries-syntax.vim"
Bundle "MichaelRFairhurst/angular-dep.vim"

"Play2 framework and scala support
Bundle 'derekwyatt/vim-scala'
Bundle 'gre/play2vim'


"Colorschemes
Bundle 'pyte'
Bundle 'altercation/vim-colors-solarized'
Bundle 'chankaward/vim-railscasts-theme'
Bundle 'abra/vim-abra'
Bundle 'NLKNguyen/papercolor-theme'
Bundle 'morhetz/gruvbox'

"Vim rooter
"Stop printing cwd
let g:rooter_silent_chdir = 1


"Vim terminal configuration for vim-gtfo
let g:gtfo#terminals = { 'unix' : 'xfce4-terminal' }

"Vim indent-guides
let g:indent_guides_guide_size = 1

"Signify configuration
"Use only git = faster
let g:signify_vcs_list = [ 'git']


"Ctrlp-delete init
call ctrlp_bdelete#init()

"Javascript libraries syntax used
let g:used_javascript_libs = 'jquery,underscore,angularjs'


"Syntastic should ignore angularJS ng-attributes in HTML files
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

"vim-airline configuration
let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 0

"Setting the expanding key of emmet (ex zencoding)
let g:user_emmet_expandabbr_key = '<c-e>'
let g:use_emmet_complete_tag = 1

" After all vundle bundle: you turn on the filetypes
filetype plugin indent on

"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
set guifont=Fira\ Mono\ for\ Powerline\ 10
set encoding=utf-8
set modelines=0


set ai "Auto ident
set si "Smart ident
set wrap "Wrap lines

"MYSQL file type for SQL files
let g:sql_type_default = 'mysql'

"""""""""""""" Ctrl-P config
set wildignore+=*.so,*.swp,*.zip,*.class
set wildignore+=*/.hg/*,*/.svn/*,*/build/*,*/platforms/*,*/dist/*,*/.git/*,*/target/*
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
"let g:ackprg="ack-grep -H --nocolor --nogroup --column"

"Use Ag as ack-grep prg
let g:ackprg = 'ag --nogroup --nocolor --column'

" Gitlab as remote repository for Fugitive
let g:fugitive_gitlab_domains = ['http://git.thebusinessgame.it']

"Workaround to oen the browse with netrw
" https://github.com/tpope/vim-fugitive/issues/518#issuecomment-58961059
let g:netrw_browsex_viewer = "gnome-open-fixed"

" Solarized dark as theme for vim & gvim
colorscheme desert

"""""""""""""""""""""""""""""""""""""""""
" ONLY FOR GVIM
""""""""""""""""""""""""""""""""""""""""
" Set extra options when running in GUI mode
if has("gui_running")
	cd  ~
"	set background=dark
	"No scrollbar
	set guioptions-=r
	set guioptions-=R
	set guioptions-=l
	set guioptions-=L
	set guioptions-=T
	set guioptions-=m
"	colorscheme solarized
	set cursorline
	set showmode
	set showcmd
	" Solarized dark as theme for vim & gvim
	"colorscheme solarized
	colorscheme gruvbox
	set background=dark
endif

"""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
""""""""""""""""""""""""""""""""""""""""
" <Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

nmap <leader>h :nohl<cr>

"Signify, git simbols in gutter, plugin mappings
nmap  <leader>st :SignifyToggle<cr>
nmap  <leader>sh :SignifyToggleHighlight<cr>
nmap  <leader>sr :SignifyRefresh<cr>

"F5 to open buffer list and open a specific buffer with number
:nnoremap <F9> :buffers<CR>:buffer<Space>

"Fugitive mappings
nmap <leader>gs :Gstatus<cr>
nmap <leader>gp :Gpush<cr>
nmap <leader>gw :Gbrowse<cr>
nmap <leader>gb :Gblam<cr>
"nmap <leader>gl :Glog --pretty=format:'[%h]\ <%cn>\ [%cd]\ %s'<cr>
nmap <leader>gvd :Gvdiff 

"Mappings to explore quickfix with fugitive Glog
nmap [q :cprevious<cr>
nmap ]q :cnext<cr>
nmap [Q :cfirst<cr>
nmap ]Q :clast<cr>


"Change the case of the first letter of a word
nmap <leader>~ m`b~``

"LustyJuggler buffer explorer remapping
"map <leader>b : LustyJuggler<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

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
"let NERDTreeQuitOnOpen=1
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

"Quick way to toggle show invisibles
"Already used in a plugin
"nmap <leader>l :set list!<CR>
set lcs=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Custom autocommands
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
au BufWritePost dati_server.markdown !/home/giacomo/scripts/sh/update_dati_server

"Clear the sign column
highlight clear SignColumn


""""""" Startify start banner
let g:startify_custom_header = [
			 \'____   ____.__          _________      _____   ',
			 \'\   \ /   /|__| _____   \______  \    /  |  |  ',
			 \' \   Y   / |  |/     \      /    /   /   |  |_ ',
			 \'  \     /  |  |  Y Y  \    /    /   /    ^   / ',
			 \'   \___/   |__|__|_|  /   /____/   /\____   |  ',
			 \'                    \/             \/    |__|  ',
			 \ '',
			 \ '                VIM - Vi IMproved             ',
			 \ '              by Bram Moolenaar et al.        ',
			 \ '',
			 \ '',
			 \ ]

