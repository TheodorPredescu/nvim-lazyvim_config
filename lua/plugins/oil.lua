return {
  "stevearc/oil.nvim",
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    },
    skip_confirm_for_simple_edits = true,
    keymaps = {
      ["g?"] = "actions.show_help",
      ["<CR>"] = "actions.select",
      ["<C-v>"] = "actions.select_vsplit",
      ["<C-x>"] = "actions.select_split",
      ["<C-t>"] = "actions.select_tab",
      ["<BS>"] = "actions.parent",
      ["q"] = "actions.close",
      ["<C-h>"] = "actions.toggle_hidden", -- optional: toggle hidden files
    },
  },
  keys = {
    { "<leader>fo", "<cmd>Oil<CR>", desc = "Open Oil file manager" },
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional icons
  },
}
