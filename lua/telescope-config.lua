local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- require('telescope').setup {
-- 	defaults = {
-- 		file_previewer = require 'telescope.previewers'.cat.new,
-- 		grep_previewer = require 'telescope.previewers'.cat.new,
-- 		qflist_previewer = require 'telescope.previewers'.cat.new,
-- 		preview_cutoff = 120, -- Adjust this value if needed
-- 	}
-- }

-- Solution : for showing file preview
-- https://github.com/nvim-telescope/telescope.nvim/issues/1594#issuecomment-993447528
require('telescope').setup {
	defaults = {
		layout_config = {
			horizontal = {
				preview_cutoff = 0,
			},
		},
	}
}
