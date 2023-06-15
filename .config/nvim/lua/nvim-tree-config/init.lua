require('nvim-tree').setup({
  disable_netrw = false,
  hijack_netrw = false,
  view = {
    float = {
      enable = true,
    },
    number = true,
    relativenumber = true,
    side = 'left',
    width = {
      max = -1
    }
  },
  renderer = {
    icons = {
      show = {
        file = true,
        folder = true,
        folder_arrow = false,
        git = true
      }
    }
  }
})

vim.cmd[[
nnoremap <C-n> :NvimTreeFindFileToggle<CR>
]]
