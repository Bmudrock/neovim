return {
  {
    "olimorris/codecompanion.nvim",
    opts = {
      adapters = {
        ollama = function()
          return require("codecompanion.adapters").extend("ollama", {
            env = {
              url = "http://llm.glider-eng.com:11434", -- Ollama API endpoint
              system = "You are a code assistant. When given an @editor request, return a unified diff with line numbers only. Do not explain."
            },
            parameters = {
              sync = true, -- Makes requests blocking; useful for CLI-style usage
            },
            schema = {
              model = { default="deepseek-coder-v2:16b"},
            }
          })
        end,
      },
      strategies = {
        chat = { adapter = "ollama" },
        editor = { adapter = "ollama" },
        inline = { adapter = "ollama" },
        cmd = { adapter = "ollama" },
      },
      opts = {
        log_level = "DEBUG"
      },
    },
    dependencies = {
      { "nvim-lua/plenary.nvim", branch = "master" }, -- ensure master branch for compatibility
      "nvim-treesitter/nvim-treesitter",
      "j-hui/fidget.nvim",
    },
    init = function()
      vim.g.codecompanion_adapter = "ollama" -- helpful for defaults
      vim.g.codecompanion_log_level = "debug"
      require("plugins.codecompanion.fidget-spinner"):init()
    end,
    event = "VeryLazy", -- ensures lazy loading
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    ft = { "markdown", "codecompanion" }
  },
}
