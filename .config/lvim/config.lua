-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.opt.relativenumber = true

-- when in tmux esc then j/k drags the line you are on along with the cursor,
-- rotten behaviour! This should fix that, it doesnt tho
--lvim.keys.normal_mode["<A-j>"]=false
--lvim.keys.normal_mode["<A-k>"]=false
-- this + setting esc time to 0 in tmux fixes it
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0
