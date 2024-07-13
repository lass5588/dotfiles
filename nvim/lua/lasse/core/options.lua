vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.expandtab = true
opt.autoindent = true

opt.ignorecase = true -- Ignore case when searching
opt.smartcase = true -- If mixed case is included, be sensitive

opt.cursorline = true
opt.backspace = "indent,eol,start" -- Allow backspace on indent, end of line and insert mode

-- Colors
opt.termguicolors = true
opt.background = "dark"  -- Prefers colorscheme with dark mode over light
opt.signcolumn = "yes" -- Show sign column so that text does not shift

-- Clipboard
opt.clipboard:append("unnamedplus") -- Use system clipboard as default register

-- Split window
opt.splitright = true
opt.splitbelow = true

