require('lualine').setup({
  options = {
    theme = 'embark'
  },
  sections = {
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {},
    lualine_x = {'filetype'},
    lualine_y = {}
  }
})
