return {
  -- add gruvbox
  {
    "ellisonleao/gruvbox.nvim",
     lazy = false,
     priority = 1000,
  },
  -- {
  --   "olimorris/onedarkpro.nvim",
  --   priority = 1000, -- Ensure it loads first
  -- },
  {
    "navarasu/onedark.nvim",
    priority = 1000, -- Ensure it loads first
  },
  {
      "scottmckendry/cyberdream.nvim",
      lazy = false,
      priority = 1000,
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  }
}
