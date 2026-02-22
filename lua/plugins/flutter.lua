return {
  -- Flutter Tools
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = function()
      require("flutter-tools").setup({
        lsp = {
          color = {
            enabled = true,
            background = false,
            virtual_text = true,
          },
          settings = {
            showTodos = true,
            completeFunctionCalls = true,
            renameFilesWithClasses = "prompt",
            enableSnippets = true,
          },
        },
        debugger = {
          enabled = true,
          run_via_dap = true,
        },
        dev_log = {
          enabled = true,
          open_cmd = "tabedit",
        },
      })
    end,
  },

  -- Dart language support
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "dart" })
      end
    end,
  },
}
