" VUNDELZ TO BE HAD HERE
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let vundle manage vundle
Plugin 'VundleVim/Vundle.vim'

" PLUGINZ HERE BBZ!!!

" Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Bundle 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'airblade/vim-gitgutter'
Plugin 'chrisbra/csv.vim'
Plugin 'chase/vim-ansible-yaml'
" Plugin 'Valloric/YouCompleteMe' # why cant i compile this??
Bundle 'klen/python-mode'
Plugin 'davidhalter/jedi-vim'
Plugin 'whatyouhide/vim-gotham'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'rust-lang/rust.vim'

" end
call vundle#end()
filetype plugin indent on

" END VUNDLE STUFF HERE

" POWERLINe SETUP
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
" set laststatus=2

"NERD TREE MAPPINGS
map <F2> :NERDTreeToggle<CR>


" PYMODE 

" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 0 

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" THEME
syntax enable
set number
set relativenumber

let g:pymode_rope_lookup_project = 0

" powerline setup

" set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/

" Always show statusline
 set laststatus=2

" Use 256 colours (Use this setting only if your terminal supports 256
" colours)
 set t_Co=256
" ///////////////////////////////////////////////

" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> <A-h> <C-w><
map <silent> <A-j> <C-W>-
map <silent> <A-k> <C-W>+
map <silent> <A-l> <C-w>>


let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
