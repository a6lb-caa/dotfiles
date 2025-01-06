if true then return {} end

return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "hrsh7th/nvim-cmp", -- Optional: For using slash commands and variables in the chat buffer
    {
      "stevearc/dressing.nvim", -- Optional: Improves the default Neovim UI
      opts = {},
    },
    "nvim-telescope/telescope.nvim", -- Optional: For using slash commands
  },
  adapters = {
    anthropic = function()
      return require("codecompanion.adapters").extend("anthropic", {
        env = {
          api_key = os.getenv("ANTHROPIC_API_KEY")
        },
      })
    end,
  },
  strategies = {
    chat = {
      adapter = "anthropic",
    },
    inline = {
      adapter = "copilot",
    },
    agent = {
      adapter = "anthropic",
    },
  },
  config = true,
  keymaps = {
    { "<leader>ch", "<cmd>CodeCompanionActions<cr>", desc = "Code Companion Actions" },
    { "<LocalLeader>a", "<cmd>CodeCompanionToggle<cr>", desc = "Code Companion Toggle" },
    { "ga", "<cmd>CodeCompanionAdd<cr>", desc = "Code Companion Add" },
  },
}
