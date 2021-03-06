-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- telescope requirements
	use("nvim-lua/popup.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-fzy-native.nvim")

	-- lsp and treesitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use("nvim-treesitter/playground")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-nvim-lsp")
	use("saadparwaiz1/cmp_luasnip")
	use("L3MON4D3/LuaSnip")
	use("onsails/lspkind-nvim")

	use("ThePrimeagen/git-worktree.nvim")

	use("gruvbox-community/gruvbox")
	use("airblade/vim-gitgutter")
	use("tpope/vim-fugitive")
	use("kdheepak/lazygit.nvim")
	use("tpope/vim-commentary")

	use("tpope/vim-surround")
	use("jiangmiao/auto-pairs")
	use("sbdchd/neoformat")
	use("norcalli/nvim-colorizer.lua")
	use("mattn/emmet-vim")
	use("kevinoid/vim-jsonc")
	use("ckipp01/stylua-nvim")

	use("ray-x/lsp_signature.nvim")

	use("rhysd/committia.vim")

	use("ThePrimeagen/harpoon")

	use("sakshamgupta05/vim-todo-highlight")
end)
