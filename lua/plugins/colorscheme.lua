return {
  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("moonfly")
    end,
  },
  -- {
  --   "rebelot/kanagawa.nvim",
  --   name = "kanagawa",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.cmd("colorscheme kanagawa")
  --   end,
  -- },
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.o.background = "dark" -- or "light"
  --     vim.cmd.colorscheme("tokyonight")
  --   end,
  -- },
}
