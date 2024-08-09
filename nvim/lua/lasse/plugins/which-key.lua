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
    })
  end,
}

