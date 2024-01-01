local keymap = vim.keymap
local nvim_keymap = vim.api.nvim_set_keymap

-- Nvim-tree
keymap.set("n", "<leader>tr", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
keymap.set("n", "<leader>sx", require('nvim-tree.api').node.open.horizontal, { noremap = true })
keymap.set("n", "<leader>sv", require('nvim-tree.api').node.open.vertical, { noremap = true })


-- Pane nav
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

-- Autocomplete bracket
nvim_keymap('i', '<C-">', '""<left>', { noremap = true })
nvim_keymap('i', "<C-'>", "''<left>", { noremap = true })
nvim_keymap('i', '{<CR>', '{<CR>}<Esc>ko', { noremap = true })
nvim_keymap('i', '<C-`>', '``<left>', { noremap = true })
nvim_keymap('i', '(<CR>', '()<left>', { noremap = true })
nvim_keymap('i', '[<CR>', '[]<left>', { noremap = true })
