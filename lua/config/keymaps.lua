-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
set = vim.keymap.set

-- go to next/previous buffer
set("n", "<TAB>", "<cmd>BufferLineCycleNext<cr>", { desc = "Prev buffer" })
set("n", "<S-TAB>", "<cmd>BufferLineCyclePrev<cr>", { desc = "Next buffer" })

-- save
set({ "n" }, "<leader>ww", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Inlay hints (Only works in the nightly version of nvim v0.10)
-- if vim.lsp.inlay_hint then
--   set("n", "<leader>uh", function()
--     vim.lsp.inlay_hint(0, nil)
--   end, { desc = "Toggle Inlay Hints" })
-- end

-- Nomodoro keymaps
-- local opts = { noremap = true, silent = true }
-- set("n", "<leader>n", "<cmd>NomoMenu<cr>", { desc = "NomoMenu" })

-- Disable arrow keys
-- vim.api.nvim_set_keymap("n", "<Up>", "<Nop>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Down>", "<Nop>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Left>", "<Nop>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "<Right>", "<Nop>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<Up>", "<Nop>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<Down>", "<Nop>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<Left>", "<Nop>", { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("i", "<Right>", "<Nop>", { noremap = true, silent = true })
