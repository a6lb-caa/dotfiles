return {
  'pwntester/octo.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  config = function ()
    require"octo".setup({
      default_remote = { "origin", "upstream" },
      picker = "telescope",
    })
  end
}
