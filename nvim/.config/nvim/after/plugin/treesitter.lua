require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"vim",
		"lua",
		"typescript",
		"javascript",
		"tsx",
		"html",
		"css",
		"python",
		"ruby",
		"json",
		"graphql",
		"yaml",
	},

	sync_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
})
