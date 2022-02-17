-- Jump to previous file
vim.api.nvim_set_keymap("n", "<TAB><TAB>", "<c-^>", {})

-- Save file
vim.cmd[[nnoremap <leader>s :w<cr>]]

-- Quit editor
vim.cmd[[noremap <leader>q. :q<cr>]]
vim.cmd[[noremap <leader>qa :qa<cr>]]

-- Window movement
vim.api.nvim_set_keymap("n", "gn", ":bnext<CR>", {})
vim.api.nvim_set_keymap("n", "gb", ":bprevious<CR>", {})

-- Panes movement
vim.cmd[[noremap <leader>wl <C-w>l]]
vim.cmd[[noremap <leader>wh <C-w>h]]
vim.cmd[[noremap <leader>wj <C-w>j]]
vim.cmd[[noremap <leader>wk <C-w>k]]

-- Disable arrow keys
vim.cmd[[nnoremap <up> <nop>]]
vim.cmd[[nnoremap <down> <nop>]]
vim.cmd[[nnoremap <left> <nop>]]
vim.cmd[[nnoremap <right> <nop>]]

-- Escape
vim.cmd[[inoremap ;; <Esc>]]
