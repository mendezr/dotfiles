" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)

" Syntax
set number
syntax enable
set noshowmode
set laststatus=2
set noswapfile
highlight Comment cterm=italic

" Indent
set expandtab
set shiftwidth=2
set softtabstop=2

" Columns
set textwidth=100
" let &colorcolumn=join(range(110,999),",")
highlight ColorColumn ctermbg=15 guibg=lightgrey
set colorcolumn=80

" Unset the "last search pattern"
nnoremap <CR> :noh<CR><CR>

" configurar split
" ---------------
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" Backspace
set nocompatible
set backspace=2

" Copy-paste
" set clipboard=unnamed

" Leader
let mapleader = ","

" Folding
" set fdm=syntax
" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview
" augroup vimrc
  " au BufReadPre * setlocal foldmethod=indent
  " au BufWinEnter * if &fdm == 'indent' | setlocal foldmethod=manual | endif
" augroup END


" Autogroups
filetype plugin on
autocmd FileType tex      set spell spelllang=es


call plug#begin('~/.local/share/nvim/plugged')

" Easy aling
Plug 'junegunn/vim-easy-align'

" NERDCommeter
Plug 'scrooloose/nerdcommenter'

" Add spaces after comment delimiters by default
 let g:NERDSpaceDelims = 1

" NERDTree
Plug 'scrooloose/nerdtree'

" EasyMotion
Plug 'easymotion/vim-easymotion'

" Ctrl-P - Fuzzy file search
Plug 'kien/ctrlp.vim'

" Tab completion
Plug 'ervandew/supertab'

" Remove extraneous whitespace when edit mode is exited
Plug 'thirtythreeforty/lessspace.vim'

Plug 'tell-k/vim-autopep8'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Colorscheme
Plug 'hzchirs/vim-material'
" colorscheme vim-material

" YCM
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
let g:python_host_prog = '/home/mendezr/miniconda3/envs/pdf/bin/python'

call plug#end()
