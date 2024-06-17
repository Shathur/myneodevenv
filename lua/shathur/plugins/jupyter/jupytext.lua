return {
	"GCBallesteros/jupytext.nvim",
	-- lazy = false,
	config = function()
		local jupy = require("jupytext")
		jupy.setup({
			custom_language_formatting = {
				python = {
					extension = "md",
					output_extension = "md",
					style = "markdown",
					force_ft = "markdown",
				},
			},
		})
	end,
	-- Depending on your nvim distro or config you may need to make the loading not lazy
	-- lazy=false,
}
