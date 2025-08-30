return {
  {
    "AstroNvim/astrocore",
    opts = function(_, opts)
      -- Set default options
      opts.options.opt.tabstop = 4
      opts.options.opt.shiftwidth = 4
      opts.options.opt.expandtab = false -- change to true if you want spaces instead of tabs

      -- Force after all filetype settings
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "*",
        callback = function()
          vim.opt.tabstop = 4
          vim.opt.shiftwidth = 4
          vim.opt.expandtab = false -- change to true if you want spaces
        end,
      })

      return opts
    end,
  },
}

