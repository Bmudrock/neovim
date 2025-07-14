require "nvchad.options"

-- add yours here!
vim.opt.relativenumber = true
vim.opt.colorcolumn = "100"
vim.opt.expandtab = true
vim.opt.smarttab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth= 4
vim.opt.autoindent = true
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
vim.opt.spell = true


vim.api.nvim_create_augroup("AutoFormat", {})

vim.api.nvim_create_autocmd(
    "BufWritePost",
    {
        pattern = "*.py",
        group = "AutoFormat",
        callback = function()
            vim.cmd("silent !black --quiet %")
            vim.cmd("edit")
        end,
    }
)

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
