return({
	{"nvim-treesitter/nvim-treesitter",
	branch = 'master',
	lazy = false,
	build = ":TSUpdate",
	config=function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = {"c","lua","vim","vimdoc","query","html","r","ruby","javascript","markdown"},
			-- install parsers synchronously (only applied to `ensure_installed`)
			sync_false = false,
			-- automatically install missing parsers when entering buffer
			auto_install = false,
			-- List of parsers to ignore installing 
			-- ignore_install = {"typescript"}
			highlight = {
				enable = true,
				-- list of parsers (not the filetype) that will be disabled
				-- disable = {"rust"}
			}
		})
	end
}
})
