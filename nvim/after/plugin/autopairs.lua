local npairs = require('nvim-autopairs')

npairs.setup({
	check_ts = true,
	ts_config = {
		lua = {'string'},-- it will not add a pair on that treesitter node
		javascript = {'template_string'},
		java = false,-- don't check treesitter on java
	},
	disable_filetype = { "TelescopePrompt" , "vim" },
	fast_wrap = {
		map = '<M-e>',
		chars = { '{', '[', '(', '"', "'" },
		pattern = [=[[%'%"%>%]%)%}%,]]=],
		end_key = '$',
		before_key = 'h',
		after_key = 'l',
		cursor_pos_before = true,
		keys = 'qwertyuiopzxcvbnmasdfghjkl',
		manual_position = true,
		highlight = 'Search',
		highlight_grey='Comment'
	},
})

-- If you want insert `(` after select function or method item
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local cmp = require('cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)
