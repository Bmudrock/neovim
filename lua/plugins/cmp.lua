return {
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local cmp = require("cmp")
      local conf = require("nvchad.configs.cmp")

      local mymappings = {
          -- Remap Enter to dismiss suggestions instead of confirm
          ['<CR>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.close()
              fallback()
            else
              fallback()
            end
          end, { "i", "s" }),

          -- Keep your other mappings
          ['<C-y>'] = cmp.mapping.confirm({ select = true }),
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<S-Tab>'] = cmp.mapping.select_prev_item(),
          ['<C-n>'] = cmp.mapping.select_next_item(),
          ['<C-p>'] = cmp.mapping.select_prev_item(),
          ['<C-d>'] = cmp.mapping.scroll_docs(-4),
          ['<C-f>'] = cmp.mapping.scroll_docs(4),
          ['<C-Space>'] = cmp.mapping.complete(),
          ['<C-e>'] = cmp.mapping.abort(),
      }

      conf.mapping = vim.tbl_deep_extend("force", conf.mapping, mymappings)
      return conf
    end,
  },
}

