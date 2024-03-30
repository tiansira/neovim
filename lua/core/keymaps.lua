-- setup all pluins keymap
vim.g.mapleader = " "
local keymap = vim.keymap

-- nvim-tree
-- keymap.set("n","<leader>t", ":NvimTreeToggle<CR>")
-- leader = space

-- Neotree
keymap.set("n","<leader>t", ":Neotree toggle<CR>")


-- telescope
keymap.set('n', '<leader>ff', ":Telescope find_files<CR>")
keymap.set('n', '<leader>fg', ":Telescope live_grep<cr>")
keymap.set('n', '<leader>fb', ":Telescope buffers<cr>")
keymap.set('n', '<leader>fh', ":Telescope help_tags<cr>")


-- bufferline
keymap.set('n', '<leader>xx', ":BufferLinePickClose<CR>")



-- markdown preview
keymap.set('n', '<leader>mp', ":MarkdownPreview<cr>")
keymap.set('n', '<leader>mpc', ":MarkdownPreviewStop<cr>")
