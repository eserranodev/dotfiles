require("bufferline").setup({
  options = {
    always_show_bufferline = false,
    offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
    separator_style = 'thick',
    show_buffer_close_icons = false,
    show_buffer_icons = false,
    show_close_icon = false
  }
})

vim.api.nvim_set_keymap("n", "<leader>bn", ":BufferLineCycleNext<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>bp", ":BufferLineCyclePrev<CR>", {silent = true})
vim.api.nvim_set_keymap("n", "<leader>bd", ":bd<CR>", {silent = true})
