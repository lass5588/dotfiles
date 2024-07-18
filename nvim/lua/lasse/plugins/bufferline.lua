return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "buffers", -- Change mode to 'buffers' to keep all visited files in the bufferline
      numbers = "none", -- Can be 'ordinal', 'buffer_id', 'both', or 'none'
      indicator = {
        icon = '▎', -- Icon for buffer indicator
        style = 'icon',
      },
      buffer_close_icon = '', -- Icon to close buffer
      modified_icon = '●', -- Icon for modified buffer
      close_icon = '', -- Icon to close all buffers
      left_trunc_marker = '', -- Icon for truncated buffers on the left
      right_trunc_marker = '', -- Icon for truncated buffers on the right
      max_name_length = 20, -- Maximum name length for a buffer
      max_prefix_length = 15, -- Maximum prefix length for a buffer
      tab_size = 20, -- Tab size
      diagnostics = "nvim_lsp", -- Show diagnostics from 'nvim_lsp'
      diagnostics_update_in_insert = false,
      
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
      end,

      offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "center"}},
      show_buffer_icons = true, -- Show buffer icons
      show_buffer_close_icons = true, -- Show buffer close icons
      show_close_icon = true, -- Show close icon
      show_tab_indicators = true,
      persist_buffer_sort = true, -- Persist buffer sorting
      separator_style = "thin", -- Can be 'slant', 'thick', 'thin', etc.
      enforce_regular_tabs = false,
      always_show_bufferline = true, -- Always show bufferline, even with one buffer open
      sort_by = 'id', -- Sort buffers by their buffer ID
    },
  },
}
