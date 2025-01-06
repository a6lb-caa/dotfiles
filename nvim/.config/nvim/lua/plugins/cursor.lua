--- local Config = require("ai.config")
--- local Assistant = require("ai.assistant")
--- local ChatDialog = require("nvim.ai.chat_dialog")
--- local Providers = require("ai.providers")

return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false, -- set this if you want to always pull the latest change
  opts = {
    -- add any opts here
  },
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  build = "make",
  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    "nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
    "zbirenbaum/copilot.lua", -- for providers='copilot'
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      'MeanderingProgrammer/render-markdown.nvim',
      opts = {
        file_tpes = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
  -- {
  --   "magicalne/nvim.ai",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-treesitter/nvim-treesitter",
  --   },
  --   opts = {
  --     provider = "anthropic", -- You can configure your provider, model or keymaps here.
  --   },
  --   keymaps = {
  --     -- toggle = "<leader>ch",       -- Toggle chat dialog
  --     send = "<CR>",               -- Send message in normal mode
  --     close = "q",                 -- Close chat dialog
  --     clear = "<C-l>",             -- Clear chat history
  --     inline_assist = "<leader>i", -- Run InlineAssist command with prompt
  --     accept_code = "<leader>ia",
  --     reject_code = "<leaer>ij",
  --   },
  -- },
}
