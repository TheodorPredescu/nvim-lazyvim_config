return {
  "nvim-java/nvim-java",
  config = function()
    vim.keymap.set("n", "<leader>ci", function()
      vim.lsp.buf.code_action({
        context = { only = { "source.organizeImports" } },
        apply = true,
      })
    end, { desc = "Organize Imports" })
  end,
}
