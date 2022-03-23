require("which-key").setup({
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = false, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = true, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  window = {
    border = "single", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 0, 0, 0, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 1, 0, 1, 0 }, -- extra window padding [top, right, bottom, left]
    winblend = 10
  },
})

require("which-key").register({
  b = {
    name = "buffer",
    d = {":bd<CR>", "delete"},
    n = {":BufferLineCycleNext<CR>", "next"},
    p = {":BufferLineCyclePrev<CR>", "previous"}
  },
  c = {
    name = "code",
    a = {
      name = "alternate file",
      c = {"<cmd>A<CR>", "current view"},
      h = {"<cmd>AS<CR>", "horizontally"},
      v = {"<cmd>AV<CR>", "vertically"}
    },
    c = {
      name = "comment",
      l = "line",
      b = "block"
    },
    t = {
      name = "test",
      f = {"<cmd>TestFile<CR>", "file"},
      l = {"<cmd>TestLast<CR>", "last"},
      n = {"<cmd>TestNearest<CR>", "nearest"},
      s = {"<cmd>TestSuite<CR>", "suite"},
      v = {"<cmd>TestVisit<CR>", "visit"}
    }
  },
  f = {
    name = "find",
    a = {":Telescope live_grep<CR>", "text"},
    b = {":Telescope buffers<CR>", "buffers"},
    d = {":noh<CR>", "delete search"},
    f = {":Telescope find_files<CR>", "files"},
    h = {":Telescope oldfiles<CR>", "last files"},
    m = {":Telescope marks<CR>", "marks"},
    y = {":Telescope registers<CR>", "registers"}
  },
  g = {
    name = "git",
    a = {"<cmd>Gwrite<CR>", "add"},
    b = {"<cmd>Git blame<CR>", "blame"},
    c = {"<cmd>Git commit<CR>", "commit"},
    d = {"<cmd>Git diff<CR>", "diff"},
    g = {"<cmd>Git pull<CR>", "pull"},
    h = {
      name = "hunk",
      n = {":GitGutterNextHunk<CR>", "next"},
      p = {":GitGutterPrevHunk<CR>", "previous"}
    },
    k = {"<cmd>Gread<CR>", "read"},
    l = {"<cmd>Gclog<CR>", "log"},
    s = {"<cmd>G<CR>", "status"},
    p = {"<cmd>Git push<CR>", "push"}
  },
  q = {
    name = "quit",
    a = {":qa<CR>", "all"},
    c = {":q<CR>", "current"}
  },
  s = {":w<CR>", "save current buffer"},
  w = {
    name = "window",
    h = {"<C-w>h", "move to the left"},
    j = {"<C-w>j", "move down"},
    k = {"<C-w>k", "move up"},
    l = {"<C-w>l", "move to the right"}
  }
}, { prefix = "<leader>" })
