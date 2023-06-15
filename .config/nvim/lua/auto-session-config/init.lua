vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

require('auto-session').setup({
  auto_session_create_enabled = false,
  pre_save_cmds = {"NvimTreeClose"}
})
