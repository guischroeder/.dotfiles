return {
  "nvim-telescope/telescope.nvim",
  opts = function(_, opts)
    local telescope = require "telescope"
    local actions = require "telescope.actions"
    return require("astronvim.utils").extend_tbl(opts, {
      defaults = {
        selection_caret = "  ",
        layout_config = {
          width = 0.90,
          height = 0.85,
          preview_cutoff = 120,
          horizontal = {
            preview_width = 0.6,
          },
          vertical = {
            width = 0.9,
            height = 0.95,
            preview_height = 0.5,
          },
          flex = {
            horizontal = {
              preview_width = 0.9,
            },
          },
        },
        mappings = {
          i = {
            ["<esc>"] = actions.close,
            ["<C-u>"] = false,
          },
        },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
        buffers = {
          path_display = { "smart" },
          mappings = {
            i = { ["<C-d>"] = actions.delete_buffer },
            n = { ["d"] = actions.delete_buffer },
          },
        },
      },
    })
  end,
}
