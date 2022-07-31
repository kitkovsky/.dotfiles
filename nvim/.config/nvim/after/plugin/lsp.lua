-- Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").update_capabilities(capabilities)

require("lspconfig").tsserver.setup({ capabilities = capabilities })
require("lspconfig").pyright.setup({ capabilities = capabilities })
require("lspconfig").dockerls.setup({ capabilities = capabilities })
require("lspconfig").html.setup({ capabilities = capabilities })
require("lspconfig").cssls.setup({ capabilities = capabilities })
require("lspconfig").tailwindcss.setup({ capabilities = capabilities })
require("lspconfig").eslint.setup({ capabilities = capabilities })
require("lspconfig").solargraph.setup({ capabilities = capabilities })
require("lspconfig").graphql.setup({ capabilities = capabilities })
-- require("lspconfig").yamlls.setup({ capabilities = capabilities })
require("lspconfig").sumneko_lua.setup({
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
})

require("lsp_signature").setup()

local cfg = {
	floating_window = false,
	hint_enable = true,
	hint_prefix = "🌱 ",
}

require("lsp_signature").on_attach(cfg)

-- remaps
local nnoremap = require("kitkovsky.keymap").nnoremap

nnoremap("gd", function()
	vim.lsp.buf.definition()
end, { silent = true })
nnoremap("gD", function()
	vim.lsp.buf.declaration()
end, { silent = true })
nnoremap("gt", function()
	vim.lsp.buf.type_definition()
end, { silent = true })
nnoremap("gr", function()
	vim.lsp.buf.references()
end, { silent = true })
nnoremap("gi", function()
	vim.lsp.buf.implementation()
end, { silent = true })
nnoremap("K", function()
	vim.lsp.buf.hover()
end, { silent = true })
nnoremap("[d", function()
	vim.diagnostic.goto_prev()
end, { silent = true })
nnoremap("]d", function()
	vim.diagnostic.goto_next()
end, { silent = true })
nnoremap("<leader>rn", function()
	vim.lsp.buf.rename()
end, { silent = true })
nnoremap("<leader>qf", function()
	vim.lsp.buf.code_action()
end, { silent = true })
nnoremap("<leader>d", function()
	vim.diagnostic.open_float()
end, { silent = true })
