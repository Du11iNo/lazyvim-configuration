-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.copyindent = true
vim.opt.preserveindent = true
vim.opt.breakindent = true

vim.diagnostic.config({
  virtual_text = {
    source = "if_many",
  },
  severity_sort = true,
})

vim.opt.guifont = "0xProto Nerd Font:h12"
