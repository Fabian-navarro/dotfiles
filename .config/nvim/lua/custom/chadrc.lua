vim.opt.relativenumber = true
vim.opt.colorcolumn = "80"

local map = vim.keymap.set

map("n", "<leader>cr", "<cmd>Cargo run<cr>", { desc = "Cargo run" })
map("n", "<leader>ct", "<cmd>Cargo test<cr>", { desc = "Cargo test" })
map("n", "<leader>cb", "<cmd>Cargo build<cr>", { desc = "Cargo build" })
map("n", "<leader>chl", "<cmd>ChuckLoop<cr>", { desc = "Chuck loop" })
map("n", "<leader>cha", "<cmd>ChuckAddShred<cr>", { desc = "Chuck add shred" })
map("n", "<leader>chc", "<cmd>ChuckClearShreds<cr>", { desc = "Chuck clear" })
map("n", "<leader>chx", "<cmd>ChuckExit<cr>", { desc = "Chuck exit" })



---@type ChadrcConfig
local M = {}

M.ui = { 
  theme = 'chocolate',
}




M.plugins = "custom.plugins"

--M.mappings = require "custom.mappings"

vim.opt.wrap = false
return M


