local lspkind = require("lspkind")
lspkind.init()

local cmp = require("cmp")

cmp.setup({
	mapping = {
		["<C-p>"] = cmp.mapping.select_prev_item(),
		["<C-n>"] = cmp.mapping.select_next_item(),
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-e>"] = cmp.mapping.close(),
		["<c-y>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		}),
		["<C-i>"] = cmp.get_active_entry(),
		["<c-Space>"] = cmp.mapping.complete(),
	},

	sources = {
		{ name = "nvim_lsp" },
		{ name = "path" },
		{ name = "buffer" },
		{ name = "luasnip" },
	},

	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},

	formatting = {
		format = lspkind.cmp_format({
			with_text = true,
			menu = {
				buffer = "[buf]",
				nvim_lsp = "[LSP]",
				path = "[path]",
				luasnip = "[snip]",
			},
		}),
	},
})
