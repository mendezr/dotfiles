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

" habilitar copy-paste
" -------------------
  set clipboard=unnamed

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

" Begin Plug
" ==============================================================================
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
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
let g:SuperTabClosePreviewOnPopupClose = 1


" Remove extraneous whitespace when edit mode is exited
Plug 'thirtythreeforty/lessspace.vim'

" Autopep8
Plug 'tell-k/vim-autopep8'
let g:autopep8_disable_show_diff=1
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>


" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Colorscheme
Plug 'flazz/vim-colorschemes'
colorscheme elflord

" VimTeX
Plug 'lervag/vimtex'

" YCM
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
let g:python_host_prog = '/home/mendezr/miniconda3/envs/pdf/bin/python'
let g:ycm_server_python_interpreter = '/home/mendezr/miniconda3/envs/pdf/bin/python'
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1

" Vim-airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline_theme='jellybeans'


call plug#end()

" Highlight
hi MatchParen cterm=none ctermbg=none ctermfg=blue

" Parenthesis
vnoremap _( <Esc>`>a)<Esc>`<i(<Esc>
inoremap ( ()<Esc>:let leavechar=")"<CR>i
inoremap [ []<Esc>:let leavechar="]"<CR>i
inoremap ' ''<Esc>:let leavechar="'"<CR>i
inoremap { {}<Esc>:let leavechar="}"<CR>i
inoremap " ""<Esc>i
inoremap <C-s> <Esc>/[)}"'\]>]<CR>:nohl<CR>a

