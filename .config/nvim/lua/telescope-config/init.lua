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
