vim.g.mapleader = ' '
-- disable netrw file thing
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.tabstop = 8
vim.opt.softtabstop = -1
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "php", "c", "python" },
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
  end,
})

vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.colorcolumn = '90'
vim.opt.clipboard = 'unnamedplus'
vim.opt.confirm = true
vim.opt.hidden = true

vim.opt.termguicolors = true
--vim.opt.winborder = 'rounded'

-- c* or d* to change/delete word under cursor, but you can manually
-- press n/N and then . to repeat the operation
vim.keymap.set('o', '*', function()
 if vim.v.count > 0 then
   return '*'
 else
   return '<esc>*g``' .. vim.v.operator .. 'gn'
 end
end, { expr = true })

local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/local/share/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'vim-airline/vim-airline'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'tpope/vim-fugitive'

Plug 'rust-lang/rust.vim'

vim.call('plug#end')

-- nvim-tree
require('nvim-tree').setup()
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true })

--indent guides
require("ibl").setup()

--airline
vim.g.airline_section_b = '%{FugitiveStatusline()}'
vim.g['airline#extensions#hunks#enabled'] = 1
--rust
vim.g.rustfmt_autosave = 1

vim.opt.background = 'dark'
vim.g.gruvbox_contrast_dark = 'hard'
vim.cmd('colorscheme gruvbox')
