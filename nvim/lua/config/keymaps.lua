-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymap that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymap.lua
-- Add any additional keymap here local keymap = vim.keymap
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

--Delete a word backwards
keymap.set("n", "dw", "vb_d")

--Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

--Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

--New tab
keymap.set("n", "te", ":tabedit", opts)
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Spilt Window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

--Move Window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize Window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "C-w>+")
keymap.set("n", "<C-w><down>", "C-w>-")

-- Diagnostics
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, opts)
