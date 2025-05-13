require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

local nomap = vim.keymap.del

nomap("n", "<leader>v")
nomap("n", "<A-v>")
nomap("t", "<A-v>")
nomap("n", "<A-h>")
nomap("t", "<A-h>")
nomap("n", "<A-i>")
nomap("t", "<A-i>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
