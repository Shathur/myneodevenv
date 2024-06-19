return {
	"jpalardy/vim-slime",
	init = function()
		vim.g.slime_target = "tmux"
		vim.g.slime_python_ipython = 1
		-- for some reason the following line doesnt work, so we are passing our argument
		-- with legacy vim code
		-- vim.g.slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
		vim.cmd([[
			let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
		]])
	end,
}
