local nnoremap = require("kitkovsky.keymap").nnoremap
local inoremap = require("kitkovsky.keymap").inoremap
local vnoremap = require("kitkovsky.keymap").vnoremap

-- fancy escape
inoremap("jk", "<Esc>")

-- better tabbing
vnoremap("<", "<gv")
vnoremap(">", ">gv")

-- window navigation
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- nerdtree stuff
nnoremap("<C-n>", "<cmd>Lexplore<CR>")

-- close a buffer with <leader>bd
nnoremap("<leader>bd", "<cmd>bdelete<CR>")

-- quickfix list things
nnoremap("<leader>j", "<cmd>cnext<CR>zz")
nnoremap("<leader>k", "<cmd>cprev<CR>zz")
nnoremap("<leader>co", "<cmd>copen<CR>")
nnoremap("<leader>cq", "<cmd>cclose<CR>")

-- neoformat
nnoremap("<leader>nf", "<cmd>Neoformat<CR>")

-- Y yanks to the end of the line
nnoremap("Y", "y$")

-- keeping in centered
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")
nnoremap("J", "mzJ`z")
