local bufferline = require('bufferline')
bufferline.setup {
    options = {
        offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},

        buffer_close_icon = 'X',
        modified_icon = '●',
	
	indicator = {
		style = 'underline',
	},

        show_buffer_close_icons = true,
        show_close_icon = true,
	show_tab_indicators = true,
	show_duplicate_prefix = true,

	separator_style = "thin",
	diagnostics = "nvim_lsp",
        diagnostics_indicator = function(count, level, diagnostics_dict, context)
            return "("..count..")"
        end,
    }
}

vim.cmd[[
    nnoremap <silent><leader>t] :BufferLineCycleNext<CR>
    nnoremap <silent><leader>t[ :BufferLineCyclePrev<CR>
    
    nnoremap <silent><leader>t<right> :BufferLineMoveNext<CR>
    nnoremap <silent><leader>t<left> :BufferLineMovePrev<CR>

    nnoremap <silent><leader>tq :BufferLinePickClose<CR>
    nnoremap <silent><leader>tc :Bdelete<CR>


    nnoremap <silent><leader>t1 <Cmd>BufferLineGoToBuffer 1<CR>
    nnoremap <silent><leader>t2 <Cmd>BufferLineGoToBuffer 2<CR>
    nnoremap <silent><leader>t3 <Cmd>BufferLineGoToBuffer 3<CR>
    nnoremap <silent><leader>t4 <Cmd>BufferLineGoToBuffer 4<CR>
    nnoremap <silent><leader>t5 <Cmd>BufferLineGoToBuffer 5<CR>
    nnoremap <silent><leader>t6 <Cmd>BufferLineGoToBuffer 6<CR>
    nnoremap <silent><leader>t7 <Cmd>BufferLineGoToBuffer 7<CR>
    nnoremap <silent><leader>t8 <Cmd>BufferLineGoToBuffer 8<CR>
    nnoremap <silent><leader>t9 <Cmd>BufferLineGoToBuffer 9<CR>
]]
