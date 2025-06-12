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
      ["a"] = "actions.create",
    },
  },
  keys = {
    -- { "<leader>fo", "<cmd>Oil<CR>", desc = "Open Oil file manager" },

    {
      "<leader>fo",
      function()
        -- Change to the directory of the current file
        local dir = vim.fn.expand("%:p:h")
        vim.cmd("cd " .. dir)
        -- Open Oil with no argument -> full UI mode
        require("oil").open()
      end,
      desc = "Open Oil in file's directory",
    },
  },
  dependencies = {
    "nvim-tree/nvim-web-devicons", -- optional icons
  },
}
