return {
  "ahmedkhalf/project.nvim",
  --event = { "BufReadPre", "BufNewFile" },
  config = function()
    local project = require("project_nvim")

    local keymap = vim.keymap.set

    project.setup({
      -- Your custom options
      detection_methods = { "lsp", "pattern" },
      patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
      exclude_dirs = { "*/node_modules/*" },
      show_hidden = false,
      silent_chdir = true,
      scope_chdir = 'global',
    })

    -- Optionally, you can set keymaps for project-specific commands
    
    -- keymap("n", "<leader>fp", "<cmd>Telescope projects<CR>", { desc = "Find projects" })
  end,
}
