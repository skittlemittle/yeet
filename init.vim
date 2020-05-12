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

"====Spacing, Tabbing, Indenting, and Wrapping=======================
set tabstop=8
set softtabstop
set shiftwidth=4
set noexpandtab
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

Plug 'dracula/vim',{'as':'dracula'}
Plug 'psf/black'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'

call plug#end()
"====Le theme========================================================
colorscheme dracula
