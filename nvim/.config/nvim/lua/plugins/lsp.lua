return {
  {
    "VidocqH/lsp-lens.nvim",
    opts = {
      enable = true,
      include_declaration = false, -- Reference include declaration
      sections = { -- Enable / Disable specific request
        definition = false,
        references = true,
        implementation = true,
      },
      ignore_filetype = {
        "prisma",
      },
    },
  },
  {
    "mhanberg/output-panel.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>uo", "<cmd>OutputPanel<cr>", desc = "Toggle LSP output" },
    },
    config = true,
  },
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Or `LspAttach`
    priority = 1000, -- needs to be loaded in first
    config = function()
        require('tiny-inline-diagnostic').setup()
    end
  },
  {
    "RRethy/vim-illuminate",
    event = "LazyFile",
    opts = {
      delay = 200,
      large_file_cutoff = 2000,
      large_file_overrides = {
        providers = { "lsp" },
      },
    },
  },
}
