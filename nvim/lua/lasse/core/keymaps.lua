vim.g.mapleader = " "

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Exit insert mode by pressing j and k quickly
keymap("i", "jk", "<ESC>", opts, { desc = "Exit insert mode with jk" })
keymap("i", "kj", "<ESC>", opts, { desc = "Exit insert mode with kj" })

-- Window split 
keymap("n", "<C-w>", ":vsplit<CR>", opts, { desc = "Split windows vertical" }) -- Vertical split
keymap("n", "<C-h>", ":vsplit<CR>", opts, { desc = "Split windows horizontally" }) -- horizontal split

-- Press a ctrl + m to exit search
keymap("n", "<C-m>", ":noh<CR>", opts, { desc = "Clear search highlights" })

-- Navigate split windows
keymap("n", "<C-h>", "<C-w>h", opts, { desc = "Navigate split between split windows" })
keymap("n", "<C-j>", "<C-w>j", opts, { desc = "Navigate split between split windows" })
keymap("n", "<C-k>", "<C-w>k", opts, { desc = "Navigate split between split windows" })
keymap("n", "<C-l>", "<C-w>l", opts, { desc = "Navigate split between split windows" })

-- Navigate tabs 
keymap("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- Open new tab
keymap("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- Close current tab
keymap("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) -- Go to next tab 
keymap("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) -- Go to previous tab
keymap("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) -- Open current buffer in new tab

-- Move text up and down -- Normal --
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- Move text up and down -- Visual --
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- Move text up and down -- Visual Block --
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- Keymaps for buffer 
keymap("n", "bb", ":bp<cr>", { desc = "Find files in cwd" })
keymap("n", "bn", ":bn<cr>", { desc = "Find recent files" })
 
