-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
--

local opt = vim.opt
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.listchars = {
	tab = ">-", -- a visible arrow for a tab followed by a dot for the space
	trail = "·", -- trailing spaces
	extends = "❯", -- when a line wraps beyond the window width
	precedes = "❮", -- when a line continues left of the window
	nbsp = "␣", -- non‑breaking spaces (optional)
}
