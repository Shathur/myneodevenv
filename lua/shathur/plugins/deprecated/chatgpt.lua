return {
	"jackMort/ChatGPT.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
		"nvim-lua/plenary.nvim",
		"folke/trouble.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		local home = vim.fn.expand("$HOME")
		require("chatgpt").setup({
			-- this thing doesn't work if you don't give the first / in /.config/openaiapikey.txt.gpg
			-- if you add a passphrase add it after --decrypt and care with the space after the password
			-- " --passphrase your_password ", always leave a space between your password and the next "
			api_key_cmd = "gpg --decrypt " .. home .. "/.config/openaiapikey.txt.gpg",
		})
	end,
}
