vim.g.nvim_tree_show_icons = {files = 1, folder_arrows = 0, folders = 1, git = 1}

require('nvim-tree').setup({
  auto_close = true,
  disable_netrw = false,
  hijack_netrw = false,
  quit_on_open = false,
  view = {
    side = 'right',
  }
})

vim.cmd[[
nnoremap <C-n> :NvimTreeFindFileToggle<CR>
]]
