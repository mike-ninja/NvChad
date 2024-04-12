require "nvchad.mappings"

local map = vim.keymap.set

-- Normal mode mappings
map("n", ";", ":", { desc = "Enter command mode", nowait = true })
map("n", "x", '"_x', { desc = "Don't yank with x" })
map("n", "=", ":resize +5<CR>", { desc = "Resize Vertically" })
map("n", "-", ":resize -5<CR>", { desc = "Resize Vertically" })
map("n", "<A-=>", ":vertical resize +5<CR>", { desc = "Resize Horizontally" })
map("n", "<A-->", ":vertical resize -5<CR>", { desc = "Resize Horizontally" })
map("n", "dw", 'vb"_d', { desc = "Delete word backwards" })
map("n", "n", "nzz", { desc = "Word search next to middle" })
map("n", "N", "Nzz", { desc = "Word search prev to middle" })
map("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })
map("n", "<C-d>", "<C-d>zz", { desc = "Move down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Move up" })
map("n", "<leader>c", [[<cmd>lua require("notify").dismiss()<CR>]], { desc = "Dismiss nvim-notify" })

-- Insert mode mappings
map("i", "<C-o>", "<ESC>^o", { desc = "Enter a new line down" })

-- Visual and Select mode mappings
map("x", "<leader>p", '"_dP', { desc = "Paste without yanking" })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move line down" })
map("v", "K", ":m '>-2<CR>gv=gv", { desc = "Move line up" })

-- LSP
map('n', '<space>f', vim.diagnostic.open_float)
