local actions = require("telescope.actions")
require("telescope").setup({
	defaults = {
		file_sorter = require("telescope.sorters").get_fzy_sorter,
		prompt_prefix = "🔍 ",
		color_devicons = true,

		file_previewer = require("telescope.previewers").vim_buffer_cat.new,
		grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
		qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

		mappings = {
			i = {
				["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
			},
		},

		layout_config = {
			horizontal = {
				width = 0.95,
			},
		},
	},

	extensions = {
		fzy_native = {
			override_generic_sorter = false,
			override_file_sorter = true,
		},
	},
})

require("telescope").load_extension("fzy_native")

-- remaps
local nnoremap = require("kitkovsky.keymap").nnoremap
local builtin = require("telescope.builtin")

nnoremap("<leader>ff", function()
	builtin.find_files()
end)
nnoremap("<leader>fhf", function()
	builtin.find_files({ hidden = true })
end)
nnoremap("<leader>gf", function()
	builtin.git_files()
end)
nnoremap("<leader>bf", function()
	builtin.buffers()
end)
nnoremap("<leader>gs", function()
	builtin.git_status()
end)
nnoremap("<leader>gc", function()
	builtin.git_commits()
end)
nnoremap("<leader>gbc", function()
	builtin.git_bcommits()
end)
nnoremap("<leader>gbr", function()
	builtin.git_branches()
end)
nnoremap("<leader>gt", function()
	builtin.git_stash()
end)
nnoremap("<leader>lg", function()
	builtin.live_grep()
end)
nnoremap("<leader>blg", function()
	builtin.live_grep({ grep_open_files = true })
end)
nnoremap("<leader>flg", function()
	builtin.current_buffer_fuzzy_find()
end)
nnoremap("<leader>of", function()
	builtin.oldfiles()
end)
nnoremap("<leader>wd", function()
	builtin.diagnostics()
end)
