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
}
