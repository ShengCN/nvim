" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quote
"
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align 
Plug 'neovim/nvim-lsp' " nvim-lsp 
Plug 'vimlab/split-term.vim' 
Plug 'junegunn/vim-easy-align' 
Plug 'sainnhe/gruvbox-material'
"Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'autozimu/LanguageClient-neovim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rhysd/vim-clang-format'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'jackguo380/vim-lsp-cxx-highlight'
Plug 'tikhomirov/vim-glsl'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'tpope/vim-fugitive'
Plug 'beauwilliams/focus.nvim'

" Initialize plugin system
call plug#end()

:set expandtab
:set tabstop=4
:set shiftwidth=4
:set expandtab
:set autoread
:set number
:set modifiable
:set relativenumber 
set splitright
set splitbelow
let mapleader="\<Space>"

" Important!!
if has('termguicolors')
  set termguicolors
endif

" For dark version.
set background=dark

" Set contrast.
" This configuration option should be placed before `colorscheme gruvbox-material`.
" Available values: 'hard', 'medium'(default), 'soft'
let g:gruvbox_material_background = 'medium'
colorscheme gruvbox-material

"highlight Normal     ctermbg=NONE guibg=NONE
"highlight LineNr     ctermbg=NONE guibg=NONE
"highlight SignColumn ctermbg=NONE guibg=NONE

let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=25
nmap <C-n><C-n> :NERDTree<cr>
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fn <cmd>Telescope file_browser<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>tt <cmd>TagbarToggle<cr>

" Split Term
"
nmap <C-t><C-t> :70Term<cr>
" nnoremap <leader>jj :70VTerm <cr>


" c++ syntax highlighting
"
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

let g:tagbar_position='topleft vertical'
let g:tagbar_left = 1
let g:tagbar_width=30

" coc 
"
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>
" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

:set encoding=utf8
:set fileencoding=utf-8
:set guifont=UbuntuMono\ Nerd\ Font\ Mono:h14
":set guifont=Consolas:h12
"let g:airline_powerline_fonts = 0.1

" Personal Shortcuts
"
" noremap gd <c-w>]<CR>
" noremap gb <c-t>
nmap <silent> <leader>h :wincmd h<cr>
nmap <silent> <leader>l :wincmd l<cr>
nmap <silent> <leader>j :wincmd j<cr>
nmap <silent> <leader>k :wincmd k<cr>
nmap <leader>[ :wincmd <<cr>
nmap <leader>] :wincmd ><cr>
nmap <leader>s :wa<cr>
nmap <leader>nh :noh<cr>
nnoremap tn :tabnew<CR>
nnoremap tq :tabclose<CR>
nnoremap th :tabprevious<CR>
nnoremap tl :tabnext<CR>

"You must run setup() to begin using focus
lua require("focus").setup()
lua require'nvim-web-devicons'.has_loaded()

let g:neovide_transparency=0.3
let g:neovide_cursor_vfx_mode= "railgun"
