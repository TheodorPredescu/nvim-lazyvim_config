return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",

  requires = { { "nvim-lua/plenary.nvim" } },

  config = function()
    local harpoon = require("harpoon")
    harpoon:setup()
    local wk = require("which-key")
    wk.add({
      -- Define the Harpoon group under <leader>h
      { "<leader>h", group = "Harpoon" }, -- Group definition
      { "<leader>ha", desc = "Add file" },
      { "<leader>hA", desc = "Remove file" }, -- Use hA for <S-a>
      { "<leader>hh", desc = "Toggle quick menu" },
      { "<leader>h1", desc = "Go to file 1" },
      { "<leader>h2", desc = "Go to file 2" },
      { "<leader>h3", desc = "Go to file 3" },
      { "<leader>h4", desc = "Go to file 4" },
    }, { mode = "n" }) -- Specify mode directly in the table

    vim.keymap.set("n", "<leader>ha", function()
      harpoon:list():add()
    end, { desc = "Harpoon: Add file" })
    vim.keymap.set("n", "<leader>hA", function()
      harpoon:list():remove()
    end, { desc = "Harpoon: Remove file" })

    vim.keymap.set("n", "<leader>hh", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "Harpoon: Toggle quick menu" })

    vim.keymap.set("n", "<leader>h1", function()
      harpoon:list():select(1)
    end, { desc = "Harpoon: Go to file 1" })

    vim.keymap.set("n", "<leader>h2", function()
      harpoon:list():select(2)
    end, { desc = "Harpoon: Go to file 2" })

    vim.keymap.set("n", "<leader>h3", function()
      harpoon:list():select(3)
    end, { desc = "Harpoon: Go to file 3" })

    vim.keymap.set("n", "<leader>h4", function()
      harpoon:list():select(4)
    end, { desc = "Harpoon: Go to file 4" })
  end,
}
