"====Keyboard shortcuts=============================================
map <C-n> :NERDTreeToggle<CR>

"====General trash===================================================
syntax on
set showmatch
set number

"====Spacing, Tabbing, Indenting, and Wrapping=========================
set tabstop=4
set autoindent
set smartindent
set nowrap

"====Dialoges, Prompts, Folding, and Menus============================
set foldmethod=manual             "code folding
set completeopt=longest,menuone   "autocomplete menu, shows longest match

"====Vim plug garbage==============================================
so ~/.vim/plugins.vim
