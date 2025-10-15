return {
	'folke/snacks.nvim',
	lazy=false,
	---@type snacks.Config
	opts = {
		--- see the github doc for the options 
		bigfile = {enabled = true},

		dashboard= {enabled = true},
		explorer= {enabled = true},
		indent= {enabled = true},
		notifier= {enabled = true},
		quickfile= {enabled = true},
		scope= {enabled = true},
		scroll= {enabled = true},
		statuscolumn= {enabled = true},
		words= {enabled = true},
	},
}
