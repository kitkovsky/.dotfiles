local nnoremap = require("kitkovsky.keymap").nnoremap
local ui = require("harpoon.ui")

nnoremap("<leader>ha", function()
	require("harpoon.mark").add_file()
end)

nnoremap("<leader>h1", function()
	ui.nav_file(1)
end)
nnoremap("<leader>h2", function()
	ui.nav_file(2)
end)
nnoremap("<leader>h3", function()
	ui.nav_file(3)
end)
nnoremap("<leader>h4", function()
	ui.nav_file(4)
end)
nnoremap("<leader>h5", function()
	ui.nav_file(5)
end)

nnoremap("<leader>ht", function()
	ui.toggle_quick_menu()
end)

nnoremap("<leader>hgn", function()
	ui.nav_next()
end)
nnoremap("<leader>hgp", function()
	ui.nav_prev()
end)
