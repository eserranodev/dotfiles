local actions = require('telescope.actions')

require('telescope').load_extension('coc')

require('telescope').setup({
  defaults = {
    prompt_prefix = "",
    layout_config = {
      prompt_position = "top",
    },
    sorting_strategy = "ascending",
    color_devicons = false,
    disable_devicons = true,
    mappings = {
      i = {
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<esc>"] = actions.close
      }
    }
  },
  pickers = {
    file_browser = {
      disable_devicons = true,
    }
  }
})

vim.cmd[[nmap <Leader>f :Telescope find_files<CR>]]
vim.cmd[[nmap <Leader>b :Telescope buffers<CR>]]
vim.cmd[[nmap <Leader>' :Telescope marks<CR>]]
vim.cmd[[nmap <Leader>y :Telescope registers<CR>]]
vim.cmd[[nmap <Leader>h :Telescope oldfiles<CR>]]
vim.cmd[[nmap <Leader>m :Telescope git_status<CR>]]
vim.cmd[[nmap <Leader>a :Telescope live_grep<CR>]]
