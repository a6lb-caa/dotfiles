return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "proselint")
      table.insert(opts.ensure_installed, "write-good")
      table.insert(opts.ensure_installed, "alex")
      table.insert(opts.ensure_installed, "vue-language-server")
      table.insert(opts.ensure_installed, "eslint-lsp")
      table.insert(opts.ensure_installed, "json-lsp")
      table.insert(opts.ensure_installed, "html-lsp")
    end,
  },
  {
    "nvimtools/none-ls.nvim",
    opts = function(_, opts)
      local nls = require("null-ls")
			-- nls.setup({
			opts.sources = {
				nls.builtins.formatting.stylua,
				nls.builtins.diagnostics.eslint,
				nls.builtins.completion.spell,
			}
      -- opts.sources = vim.list_extend(opts.sources, {
      --   nls.builtins.diagnostics.proselint,
      --   nls.builtins.code_actions.proselint,
      --   nls.builtins.diagnostics.alex,
      --   nls.builtins.diagnostics.write_good,
      -- })
    end,
  },
}
