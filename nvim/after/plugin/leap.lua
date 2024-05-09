local leap = require('leap')
leap.opts.case_sensitive = false
leap.add_default_mappings()
--vim.keymap.set({'n', 'x', 'o'}, '<C-f>', '<Plug>(leap-forward-to)')
--vim.keymap.set({'n', 'x', 'o'}, '<leader>f', '<Plug>(leap-backward-to)')

vim.keymap.set('n', '<C-A-f>', function ()
  local current_window = vim.fn.win_getid()
  require('leap').leap { target_windows = { current_window } }
end)
