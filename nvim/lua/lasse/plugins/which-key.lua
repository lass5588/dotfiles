return {
  "folke/which-key.nvim",
  event = "VeryLazy",

  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,

  config = function()
    local wk = require("which-key")

    wk.setup({
      -- other configurations can go here
    })

    local opts = {
      mode = "n", -- NORMAL mode
      prefix = "<leader>",
      silent = true, -- use silent when creating keymaps
      noremap = true, -- use noremap when creating keymaps
    }

    wk.add({
      -- Others
      { "<leader>/", "<cmd>lua require('Comment.api').toggle.linewise.current()<cr>" , desc = "Comment Linewise" },
      { "<leader>/", "<esc><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<cr>" , desc = "Comment Linewise", mode = "v" },
      { "<leader>f", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
      -- Buffer
      { "<leader>b", group = "Buffer" },
      { "<leader>bb", "<cmd>bp<cr>", desc = "Previous" },
      { "<leader>bn", "<cmd>bn<cr>", desc = "Next" },
      -- Search 
      { "<leader>s", group = "Search" },
      { "<leader>sf", "<cmd>Telescope find_files<cr>", desc = "Find files" },
      { "<leader>sr", "<cmd>Telescope oldfiles<cr>", desc = "Find recent files" },
      { "<leader>ss", "<cmd>Telescope live_grep<cr>", desc = "Find string in cwd" },
      { "<leader>sc", "<cmd>Telescope grep_string<cr>", desc = "Find string under cursor in cwd" },
      { "<leader>st", "<cmd>TodoTelescope<cr>", desc = "Find Todos" },
      { "<leader>sp", "<cmd>Telescope projects<cr>", desc = "Find Projects" },
      -- File Tree
      { "<leader>e", group = "File Explorer" },
      { "<leader>ee", "<cmd>NvimTreeToggle<cr>", desc = "Toggle File Explorer" },
      { "<leader>ef", "<cmd>NvimTreeFindFileToggle<cr>", desc = "Toggle File Explorer on File" },
      { "<leader>ec", "<cmd>NvimTreeCollapse<cr>", desc = "Collapse File Explorer" },
      { "<leader>er", "<cmd>NvimTreeRefresh<cr>", desc = "Refresh File Explorer" },
      -- Git
      { "<leader>g", group = "Git" },
      { "<leader>gg", "<cmd>LazyGit<cr>", desc = "Lazy Git" },
      { "<leader>gl", "<cmd>lua require 'gitsigns'.blame_line()<cr>", desc = "Git Blame" },
      { "<leader>gL", "<cmd>lua require 'gitsigns'.blame_line({ full = true })<cr>", desc = "Git Blame Full" },
      { "<leader>gs", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", desc = "Stage Hunk" },
      { "<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", desc = "Reset Hunk" },
      { "<leader>gs", ":lua require('gitsigns').stage_hunk({ vim.fn.line('.'), vim.fn.line('v') })<cr>", desc = "Stage Hunk", mode = "v" },
      { "<leader>gr", ":lua require('gitsigns').reset_hunk({ vim.fn.line('.'), vim.fn.line('v') })<cr>", desc = "Reset Hunk", mode = "v" },
      { "<leader>gS", "<cmd>lua require 'gitsigns'.stage_buffer()<cr>", desc = "Stage Buffer" },
      { "<leader>gR", "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", desc = "Reset Buffer" },
      { "<leader>gu", "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", desc = "Undo Stage Hunk" },
      { "<leader>gp", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", desc = "Preview Hunk" },
      { "<leader>gd", "<cmd>lua require 'gitsigns'.diffthis()<cr>", desc = "Diff This" },
      { "<leader>gD", "<cmd>lua require 'gitsigns'.diffthis('~')<cr>", desc = "Diff This ~" },
      { "<leader>gj", "<cmd>lua require 'gitsigns'.next_hunk()<cr>", desc = "Next Hunk" },
      { "<leader>gk", "<cmd>lua require 'gitsigns'.prev_hunk()<cr>", desc = "Previous Hunk" },
      { "<leader>gb", "<cmd>Telescope git_branches<cr>", desc = "Checkout Branch" },
      { "<leader>gc", "<cmd>Telescope git_commits<cr>", desc = "Checkout Commit" },
      -- Navigate tabs 
      { "<leader>t", group = "Tabs" },
      { "<leader>to", "<cmd>tabnew<cr>", desc = "Open new tab" },
      { "<leader>tx", "<cmd>tabclose<cr>", desc = "Close current tab" },
      { "<leader>tn", "<cmd>tabn<cr>", desc = "Go to next tab" },
      { "<leader>tp", "<cmd>tabp<cr>", desc = "Go to previous tab" },
      { "<leader>tf", "<cmd>tabnew %<cr>", desc = "Open current buffer in new tab" },
      -- Triuble Diagnostics
      { "<leader>x", group = "Trouble Diagnostics" },
      { "<leader>xw", "<cmd>Trouble diagnostics toggle<CR>", desc = "Open trouble workspace diagnostics" },
      { "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Open trouble document diagnostics" },
      { "<leader>xq", "<cmd>Trouble quickfix toggle<CR>", desc = "Open trouble quickfix list" },
      { "<leader>xl", "<cmd>Trouble loclist toggle<CR>", desc = "Open trouble location list" },
      { "<leader>xt", "<cmd>Trouble todo toggle<CR>", desc = "Open todos in trouble" },
    })
  end,
}

