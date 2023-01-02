local CATTPUCCIN = "cattpuccin"
local GRUVBOX_BABY = "gruvbox"
local current_colorscheme = GRUVBOX_BABY

vim.opt.background = "dark"

if current_colorscheme == GRUVBOX_BABY then
	vim.g.gruvbox_invert_selection = "0"
	vim.cmd("colorscheme gruvbox")
end

if current_colorscheme == CATTPUCCIN then
	require("catppuccin").setup({
		flavour = "macchiato", -- mocha, macchiato, frappe, latte
		background = {
			dark = "macchiato",
		},
		transparent_background = false,
		integrations = {
			cmp = true,
			telescope = true,
		},
	})

	vim.cmd("colorscheme catppuccin")
end
