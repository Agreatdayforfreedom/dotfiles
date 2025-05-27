local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

require("vim-opts")
require("lazy").setup("plugins")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.cursorline = true

-- Normal line numbers
vim.api.nvim_set_hl(0, "LineNr", { fg = "#646464", bg = "none" })

-- Current line number
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#2e7507", bold = true, bg = "none" })

-- Sign column (left gutter)
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

