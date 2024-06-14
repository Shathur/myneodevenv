return {
	"michaelb/sniprun",
	branch = "master",

	build = "sh install.sh",
	-- do 'sh install.sh 1' if you want to force compile locally
	-- (instead of fetching a binary from the github release). Requires Rust >= 1.65

	config = function()
		require("sniprun").setup({
			-- choose way to display
			display = { "Terminal" },
			display_options = {
				terminal_scrollback = vim.o.scrollback, -- change terminal display scrollback lines
				terminal_line_number = false, -- whether show line number in terminal window
				terminal_signcolumn = false, -- whether show signcolumn in terminal window
				terminal_position = "vertical", --# or "horizontal", to open as horizontal split instead of vertical split
				terminal_width = 85, --# change the terminal display option width (if vertical)
				terminal_height = 40, --# change the terminal display option height (if horizontal)
			},
			-- setup interpreters
			selected_interpreters = { "Python3_fifo" },
			repl_enable = { "Python3_fifo" },
			-- your options
		})
		-- repl with sniprun
		vim.keymap.set("v", "<C-c><C-c>", "<cmd>SnipRun<CR>")
		vim.keymap.set("n", "<C-c><C-x>", "<cmd>SnipClose<CR>")
		vim.keymap.set("n", "<C-c><C-i>", "<cmd>SnipInfo<CR>")
		vim.keymap.set("n", "<C-c><C-r>", "<cmd>SnipReset<CR>")
	end,
}
