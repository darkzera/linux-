"========= ========= ========= ========= =========
call plug#begin()
 
"=========  Langs =========  
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/vim-js-pretty-template'
Plug 'Quramy/tsuquyomi'
Plug 'Valloric/YouCompleteMe'                   "Auto complete solution
"Plug 'ervandew/supertab'                       "Auto complete solution
Plug 'vim-syntastic/syntastic'
Plug 'hail2u/vim-css3-syntax'
Plug 'HerringtonDarkholme/yats.vim'
"========= Misc ========= "
 
Plug 'tpope/vim-surround'
Plug 'Xuyuanp/nerdtree-git-plugin'
"========= Interface ========= "
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'vim-airline/vim-airline'                  " Air line
Plug 'ryanoasis/vim-devicons'
Plug 'pseewald/nerdtree-tagbar-combined'        "NERDtree and tabar fusion
"
"========= Interface ========= "
Plug 'vim-airline/vim-airline-themes'           " Air line
Plug 'morhetz/gruvbox'
Plug 'cocopon/iceberg.vim'
Plug 'lifepillar/vim-solarized8'
Plug 'sainnhe/vim-color-forest-night'
Plug 'victorze/foo'
Plug 'nightsense/rusticated'
Plug 'nightsense/cosmic_latte'
Plug 'ajmwagar/vim-deus'
Plug 'icymind/NeoSolarized'
Plug 'chase/focuspoint-vim'
Plug 'sff1019/vim-joker'
Plug 'rafi/awesome-vim-colorschemes' 
Plug 'vim-scripts/Ambient-Color-Scheme'
Plug 'lucasprag/simpleblack'
Plug 'gvee-s/simo-zz-2'
Plug  'slugbyte/yuejiu'
Plug 'wesgibbs/vim-irblack'
Plug 'tpope/vim-fugitive' 
Plug 'jasoncarr0/sidewalk-colorscheme' 
Plug 'gkapfham/vim-vitamin-onec'
 
"========= under testing ========= "
 
Plug 'jiangmiao/auto-pairs'
Plug 'Yggdroot/indentLine'
"" CSS Bundle
Plug 'wavded/vim-stylus'
Plug 'hail2u/vim-css3-syntax'
Plug 'groenewege/vim-less'
Plug 'gorodinskiy/vim-coloresque'
 
"" HTML Bundle
"Plug 'vim-scripts/HTML-AutoCloseTag'
 
Plug 'othree/html5.vim'
 
Plug 'tpope/vim-haml'
 
Plug 'digitaltoad/vim-jade'
 
Plug 'junegunn/fzf'
 
call plug#end()
"========= ========= ========= ========= =========
"
" Basic vim
set bs=2
set number
set relativenumber
set mouse=a
set cursorline
set expandtab
set shiftwidth=4
set smarttab
set autoindent
set smartindent
set nobackup
set nowritebackup
set noswapfile
set termguicolors

let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi', 'tsc']

nnoremap <C-t> :tabnew <CR>
nnoremap <C-r> :tabnext<CR>
nnoremap <F2> :TsuDefinition<CR>
nnoremap <F1> :TsuQuickFix<CR>
set autochdir
map <Tab> <C-W>W:cd %:p:h<CR>:<CR>
nmap qq :q<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""
"color fix for solarized theme ----- fix temporario"
set t_Co=256
let g:airline_theme='badcat'
if !has('gui_running')
  let g:solarized_termcolors=&t_Co
  let g:solarized_termtrans=1
endif

"Nerdtree config => https://github.com/toupeira/dotfiles/blob/ca656fe66b1f34cd5d5be263fd32f91919b59d90/vim/vimrc
"
"let NERDTreeMinimalUI=1
"nnoremap <F3> :NERDTreeToggleAndTagBar<CR>
"

nnoremap <F3> :NERDTreeToggle<Enter>
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeQuitOnOpen = 1
let NERDTreeIgnore=['\.spec\.ts$']

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"export para fix do GVIM <>
!export PATH=~/.npm-global/bin:$PATH
set guioptions=Ace
"set guioptions+=m
set showcmd
hi CursorLine   term=underline cterm=bold ctermbg=248 guifg=black guibg=#5A5A5A
hi LineNr term=bold ctermfg=130 guifg=#cca300
let g:indentLine_char_list = ['|', '|', '|', '|']
colorscheme vitaminonec 
