call plug#begin('~/.local/share/nvim/plugged')

Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'rktjmp/lush.nvim'
Plug 'npxbr/gruvbox.nvim'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimlab/split-term.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'zchee/deoplete-clang'
Plug 'preservim/nerdtree'

call plug#end()

set number
set termguicolors
set background=dark " or light if you want light mode
colorscheme gruvbox

let g:airline_theme='base16'
