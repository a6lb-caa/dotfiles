return {
  { "mfussenegger/nvim-dap" },
  { "nvim-neotest/neotest-plenary" },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "haydenmeade/neotest-jest",
      "marilari88/neotest-vitest",
    },
    opts = {
      discover = {
        enabled = false,
      },
      adapters = {
        "neotest-plenary",
        ['neotest-jest'] = {
          jestCommand = "npm test --",
          jestConfigFile = "custom.jest.config.ts",
          jest_test_discover = true,
          env = { CI = true },
          cwd = function()
            return vim.fn.getcwd()
          end,
        },
    } },
    keys = {
      {
        "<leader>tl",
        function()
          require("neotest").run.run_last()
        end,
        desc = "Run Last Test",
      },
      {
        "<leader>tL",
        function()
          require("neotest").run.run_last()
        end,
        desc = "Debug Last Test",
      },
      {
        "<leader>tw",
        "<cmd>lua require('neotest').run.run({ jestCommand = 'jest --watch ' })<cr>",
        desc = "Run Watch",
      },
    },
  },
}
