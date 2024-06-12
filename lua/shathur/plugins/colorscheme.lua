return {
	'Shadorain/shadotheme',
	config = function()
		vim.cmd([[colorscheme shado]])
		vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
		vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
		-- set the LineNr, the column where the numbers reside
		vim.api.nvim_set_hl(0, "LineNr", {fg = "none"})
		-- set the SignColumn, the leftest column, where the ~ at the start reside
		vim.api.nvim_set_hl(0, "SignColumn", {bg = "none"})
	end
}
