return {
	{
		"tigran-sargsyan-w/nvim-42-format",
		cmd = "Format",
		config = function()
			local formatter = require "nvim-42-format"
			formatter.setup({
				formatter = 'c_formatter_42',
				filetypes = { c = true, h = true, cpp = true, hpp = true },
			})
		end
	},
	{
		"Diogo-ss/42-header.nvim",
		cmd = { "Stdheader" },
		keys = { "<F1>" },
		opts = {
			default_map = true,
    		auto_update = true,
			user = "nschneid", -- Your user.
			mail = "nschneid@student.42heilbronn.de", -- Your mail.
		},
		config = function(_, opts)
		require("42header").setup(opts)
		end,
	}
}
