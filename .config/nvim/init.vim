"====Keyboard shortcuts==============================================
map <C-d> :NERDTreeToggle<CR>

"====Autoclose stuff=================================================
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>

"====General trash===================================================
syntax on
set showmatch
set number
set termguicolors
set mouse=a
set colorcolumn=81
set backspace=indent,eol,start
set updatetime=300
autocmd FileType c,cpp setlocal equalprg=clang-format
command! -nargs=0 Prettier :CocCommand prettier.formatFile
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

"====Spacing, Tabbing, Indenting, and Wrapping=======================
set tabstop=8
set softtabstop=-1
set shiftwidth=2
set expandtab
set autoindent
set smartindent
set nowrap

"====Dialoges, Prompts, Folding, and Menus===========================
set foldmethod=manual             "code folding
set confirm
set completeopt=longest,menuone   "autocomplete menu, shows longest match
set complete=.,w,b,u,t,i          " scan current & included files for autocomplete

"====Vim plug garbage================================================
call plug#begin()

"Plug 'dracula/vim',{'as':'dracula'}
Plug 'joshdick/onedark.vim'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'thaerkh/vim-indentguides'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" nerdtree has no rights
autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"====Le theme========================================================
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
    set termguicolors
endif

colorscheme onedark

