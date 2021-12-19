vim.g.projectionist_heuristics = {
  ['mix.exs'] = {
    ['lib/*.ex'] = {
      type = 'lib',
      alternate = 'test/{}_test.exs'
    },
    ['test/*_test.exs'] = {
      type = 'test',
      alternate = 'lib/{}.ex'
    }
  }
}

vim.api.nvim_set_keymap('n', '<leader>ca', '<cmd>A<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>cah', '<cmd>AS<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>cav', '<cmd>AV<CR>', { noremap = true, silent = true })
