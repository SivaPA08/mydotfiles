return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  build = ":Copilot auth",
  event = "BufReadPost",
  opts = {
    panel = { enabled = false }, -- optional, no side panel
    suggestion = {
      enabled = true, -- 👈 this is the ghost autocomplete
      auto_trigger = true, -- automatically show inline suggestions
      debounce = 75, -- small delay
      keymap = {
        accept = false, -- handled by AI completion mapping
        next = "<M-]>", -- optional: cycle suggestions
        prev = "<M-[>", -- optional: cycle suggestions
        dismiss = "<C-]>", -- optional: dismiss suggestion
      },
    },
  },
  specs = {
    {
      "AstroNvim/astrocore",
      opts = {
        options = {
          g = {
            ai_accept = function()
              local ok, suggestion = pcall(require, "copilot.suggestion")
              if ok and suggestion.is_visible() then
                suggestion.accept()
                return true
              end
            end,
          },
        },
      },
    },
  },
}
