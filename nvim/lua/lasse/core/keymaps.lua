vim.g.mapleader = " "

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Exit insert mode by pressing j and k quickly
keymap("i", "jk", "<ESC>", opts, { desc = "Exit insert mode with jk" })
keymap("i", "kj", "<ESC>", opts, { desc = "Exit insert mode with kj" })

-- Window split 
keymap("n", "<C-w>", ":vsplit<cr>", opts, { desc = "Split windows vertical" }) -- Vertical split
keymap("n", "<C-h>", ":vsplit<cr>", opts, { desc = "Split windows horizontally" }) -- horizontal split

-- Press a ctrl + m to exit search
keymap("n", "<C-m>", ":noh<cr>", opts, { desc = "Clear search highlights" })

-- Navigate split windows
keymap("n", "<C-h>", "<C-w>h", opts, { desc = "Navigate split between split windows" })
keymap("n", "<C-j>", "<C-w>j", opts, { desc = "Navigate split between split windows" })
keymap("n", "<C-k>", "<C-w>k", opts, { desc = "Navigate split between split windows" })
keymap("n", "<C-l>", "<C-w>l", opts, { desc = "Navigate split between split windows" })

-- Move text up and down -- Normal --
keymap("n", "<A-j>", ":m .+1<cr>==", opts)
keymap("n", "<A-k>", ":m .-2<cr>==", opts)

-- Move text up and down -- Visual --
keymap("v", "<A-j>", ":m '>+1<cr>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<cr>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- Move text up and down -- Visual Block --
keymap("x", "J", ":m '>+1<cr>gv=gv", opts)
keymap("x", "K", ":m '<-2<cr>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<cr>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<cr>gv=gv", opts)

