local leap = require('leap')
leap.opts.case_sensitive = false
leap.add_default_mappings()

vim.keymap.set({ 'n', 'x', 'o' }, '<C-f>',
	function() require('leap').leap { target_windows = { vim.fn.win_getid() } } end)
