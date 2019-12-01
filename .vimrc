"====Keyboard shortcuts==============================================
map <C-n> :NERDTreeToggle<CR>

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
set tabstop=4
set autoindent
set smartindent
set nowrap

"====Dialoges, Prompts, Folding, and Menus===========================
set foldmethod=manual             "code folding
set confirm
set completeopt=longest,menuone   "autocomplete menu, shows longest match
set complete=.,w,b,u,t,i          " scan current & included files for autocomplete

"====Vim plug garbage================================================
so ~/.vim/plugins.vim

"====Le theme========================================================
colorscheme dracula
