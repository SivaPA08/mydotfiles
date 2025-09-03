return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Diagnostic configuration
      vim.diagnostic.config {
        virtual_text = false,
        signs = true,
        underline = true,
        float = { show_header = false, source = true },
      }

      -- Show diagnostic popup only when cursor holds
      vim.cmd [[autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focus = false })]]

      -- Keymap for hover with rounded border
      vim.keymap.set(
        "n",
        "K",
        function() vim.lsp.buf.hover { border = "rounded" } end,
        { noremap = true, silent = true }
      )
    end,
  },
}
