local keymap = vim.keymap
local nvim_keymap = vim.api.nvim_set_keymap

-- Neotree
keymap.set("n", "<leader>m", ":Neotree<CR>", { noremap = true, silent = true })

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
