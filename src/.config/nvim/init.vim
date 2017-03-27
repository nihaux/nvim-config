call plug#begin('~/.local/share/nvim/plugged')

" javascript http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/ 
Plug 'pangloss/vim-javascript'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jelera/vim-javascript-syntax'
Plug 'mxw/vim-jsx'
Plug 'isRuslan/vim-es6'

" auto add closing quotes, brackets
Plug 'Raimondi/delimitMate'

" autocomplete
Plug 'Valloric/YouCompleteMe'

" bottom bar & buffer tabs
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
" fuzzy search in files
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"visualize undotree
Plug 'mbbill/undotree'

" Initialize plugin system
call plug#end()

" esc to go back to normal mode in terminal
:tnoremap <Esc> <C-\><C-n>
" use `Alt+{h,j,k,l}` to navigate between windows from any mode.
" <C-V> is used to send to alt key in mac
:tnoremap <C-V><A-h> <C-\><C-n><C-w>h
:tnoremap <C-V><A-j> <C-\><C-n><C-w>j
:tnoremap <C-V><A-k> <C-\><C-n><C-w>k
:tnoremap <C-V><A-l> <C-\><C-n><C-w>l
:nnoremap <C-V><A-h> <C-w>h
:nnoremap <C-V><A-j> <C-w>j
:nnoremap <C-V><A-k> <C-w>k
:nnoremap <C-V><A-l> <C-w>l

let g:neomake_list_height = 2
let g:neomake_open_list = 2
let g:neomake_verbose = 3
let g:neomake_javascript_eslint_exe = './node_modules/.bin/eslint'
let g:neomake_javascript_enabled_makers = ['eslint']
autocmd! BufWritePost *.js silent! Neomake

" enable replace tabline by buffers if 1 tab
let g:airline#extensions#tabline#enabled = 1

set foldmethod=syntax
set foldlevelstart=1

let javaScript_fold=1         " JavaScript

" use 2 space for javascript 
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

set splitbelow
set splitright
