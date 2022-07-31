local nnoremap = require("kitkovsky.keymap").nnoremap

nnoremap("]h", "<cmd>GitGutterNextHunk<CR>")
nnoremap("[h", "<cmd>GitGutterPrevHunk<CR>")
nnoremap("<leader>hu", "<cmd>GitGutterUndoHunk<CR>")
nnoremap("<leader>hs", "<cmd>GitGutterStageHunk<CR>")
