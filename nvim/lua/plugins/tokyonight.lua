return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "night", -- "night", "storm", "moon", or "day"
        transparent = false,
        styles = {
          sidebars = "dark",
          floats = "dark",
        },
        on_colors = function(colors)
          colors.bg = "#000000" -- pure black background
        end,
      })
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}

