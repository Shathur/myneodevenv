print("Hello Shathur")
require("shathur.remap")
require("shathur.set")
require("shathur.lazy")

-- 24 bit color enabled
vim.opt.termguicolors = true

-- always interact with the clipboard
-- set clipboard+=unnamedplus
-- vim.api.nvim_set_option("clipboard", "unnamed") -- deprecated
-- vim.api.nvim_set_option_value("clipboard", "unnamed", {})
vim.opt.clipboard = "unnamedplus"
