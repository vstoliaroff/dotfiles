return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	dependencies = {
		'nvim-lua/plenary.nvim'
		,'nvim-treesitter/nvim-treesitter'
		,{'nvim-telescope/telescope-fzf-native.nvim',build = 'make'}
		,'nvim-telescope/telescope-ui-select.nvim'
		,{'nvim-tree/nvim-web-devicons',enabled=vim.g.have_nerd_font}
		,
	},
	config = function()
		local builtin = require 'telescope.builtin'
		vim.keymap.set('n','<leader>ff', builtin.find_files, {desc='[F]ind [F]iles'})
		vim.keymap.set('n','<leader>b', builtin.buffers, {desc='[B]uffers'})
		vim.keymap.set('n','<leader>g', builtin.live_grep, {desc='[L]ive [G]rep'})
	end,
}
