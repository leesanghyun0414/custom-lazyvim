local mergeTables = require("utils").merge_tables
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>ra", "<cmd>!cargo run<cr>", mergeTables(opts, { desc = "Cargo Run" }))
