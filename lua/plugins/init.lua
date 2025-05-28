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
    "olimorris/codecompanion.nvim",
    opts = {
      adapters = {
        ollama = function()
          return require("codecompanion.adapters").extend("ollama", {
            env = {
              url = "http://localhost:11434", -- Ollama API endpoint
            },
            parameters = {
              sync = true, -- Makes requests blocking; useful for CLI-style usage
            },
            schema = {
              model = { default="deepseek-coder:33b"},
            }
          })
        end,
      },
      strategies = {
        chat = { adapter = "ollama" },
        inline = { adapter = "ollama" },
        cmd = { adapter = "ollama" },
      },
      opts = {
        log_level = "DEBUG"
      }
    },

    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" }, -- ensure master branch for compatibility
      "nvim-treesitter/nvim-treesitter",
    },
    init = function()
      vim.g.codecompanion_adapter = "ollama" -- helpful for defaults
      vim.g.codecompanion_log_level = "debug"
    end,
    event = "VeryLazy", -- ensures lazy loading
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "codecompanion" }
  },
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = function()
      return {
        defaults = {
          file_ignore_patterns = { "__pycache__", "venv", "%.pyc" }
        }
      }
    end
  },


  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
