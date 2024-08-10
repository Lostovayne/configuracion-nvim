return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvimtools/none-ls.nvim",
    event = "VeryLazy",
    opts = function()
      return require "configs.null-ls"
    end
  },

  {
    "windwp/nvim-ts-autotag",
    ft = {
      "javascript", "typescript",
      "javascriptreact", "typescriptreact"
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },
  -- {
  --   "nvim-treesitter/nvim-treesitter",
  --   opts = function ()
  --     opts  = require "configs.treesitter"
  --     opts.ensure_installed = {
  --       "lua",
  --       "javascript",
  --       "typescript",
  --       "typescriptreact",
  --       "tsx",
  --       "css",
  --       "html",
  --       "astro",
  --       "python",
  --     }
  --
  --     return opts
  --
  --   end
  -- }
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "lua",
        "html", "css", "javascript", "typescript"
      },
    },
  },
}
