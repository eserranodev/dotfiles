-- Jump to previous file
vim.api.nvim_set_keymap("n", "<TAB><TAB>", "<c-^>", {})

-- Window movement
vim.api.nvim_set_keymap("n", "gn", ":bnext<CR>", {})
vim.api.nvim_set_keymap("n", "gb", ":bprevious<CR>", {})


-- Disable arrow keys
vim.cmd[[nnoremap <up> <nop>]]
vim.cmd[[nnoremap <down> <nop>]]
vim.cmd[[nnoremap <left> <nop>]]
vim.cmd[[nnoremap <right> <nop>]]

-- Escape
vim.cmd[[inoremap ;; <Esc>]]
