return {
	"j-morano/buffer_manager.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local buff_manager = require("buffer_manager")
		buff_manager.setup({})
		local buff_manager_ui = require("buffer_manager.ui")
		vim.keymap.set("n", "<leader>bb", buff_manager_ui.toggle_quick_menu, { noremap = true })
		-- vim.keymap.set("n", "<leader>bb", buff_manager.toggle_quick_menu(), { "que passa" })
		-- vim.keymap.set("n", "<leader>bn", buff_manager.nav_next(), {})
		-- vim.keymap.set("n", "<leader>bp", buff_manager.nav_prev(), {})
	end,
}
