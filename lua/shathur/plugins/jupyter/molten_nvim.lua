return {
	-- for this to run we need to have the python-provider
	-- enabled for nvim
	-- install it on both the venv and the global
	-- pip install --upgrade pynvim
	{
		"benlubas/molten-nvim",
		-- version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
		-- dependencies = { "3rd/image.nvim" },
		build = ":UpdateRemotePlugins",
		init = function()
			-- these are examples, not defaults. Please see the readme
			vim.g.molten_image_provider = "image.nvim"
			vim.g.molten_output_win_max_height = 20
			-- here come some remaps
			vim.keymap.set(
				"n",
				"<localleader>je",
				":MoltenEvaluateOperator<CR>",
				{ desc = "evaluate operator", silent = true }
			)
			vim.keymap.set(
				"n",
				"<localleader>js",
				":noautocmd MoltenEnterOutput<CR>",
				{ desc = "open output window", silent = true }
			)
			vim.keymap.set(
				"n",
				"<localleader>jr",
				":MoltenReevaluateCell<CR>",
				{ desc = "re-eval cell", silent = true }
			)
			vim.keymap.set(
				"v",
				"<localleader>je",
				":<C-u>MoltenEvaluateVisual<CR>gv",
				{ desc = "execute visual selection", silent = true }
			)
			vim.keymap.set(
				"n",
				"<localleader>jh",
				":MoltenHideOutput<CR>",
				{ desc = "close output window", silent = true }
			)
			vim.keymap.set("n", "<localleader>jd", ":MoltenDelete<CR>", { desc = "delete Molten cell", silent = true })

			-- if you work with html outputs:
			vim.keymap.set(
				"n",
				"<localleader>jz",
				":MoltenOpenInBrowser<CR>",
				{ desc = "open output in browser", silent = true }
			)
		end,
	},
	{
		{
			"vhyrro/luarocks.nvim",
			priority = 1001, -- this plugin needs to run before anything else
			opts = {
				rocks = { "magick" },
			},
		},
	},
}
