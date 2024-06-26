-- setup all pluins keymap
vim.g.mapleader = " "
local keymap = vim.keymap


-- Neotree
keymap.set("n","<leader>t", ":Neotree toggle<CR>")

-- switch between tree and editor
keymap.set("n","<leader><Left>", "<C-w>h")
keymap.set("n","<leader><Right>", "<C-w>l")



-- telescope
-- keymap.set('n', '<leader>ff', ":Telescope find_files<CR>")
-- keymap.set('n', '<leader>fg', ":Telescope live_grep<cr>")
-- keymap.set('n', '<leader>fb', ":Telescope buffers<cr>")
-- keymap.set('n', '<leader>fh', ":Telescope help_tags<cr>")

-- bufferline
keymap.set('n', '<leader>xx', ":BufferLinePickClose<CR>")


keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
keymap.set("n", "<C-s>", "<CMD>w<CR>", { desc = "save file" })
keymap.set("n", "q", "<CMD>q<CR>", { desc = "exit vi" })
keymap.set("n", "<C-q>", "<CMD>wq<CR>", { desc = "save file & exit " })
