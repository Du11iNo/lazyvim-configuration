-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
---@diagnostic disable: undefined-global

vim.keymap.set("n", "<D-Esc>", function()
  Snacks.dashboard()
end, { desc = "Dashboard" })

vim.keymap.del("n", "<leader>e")
vim.keymap.del("n", "<leader>E")

vim.keymap.set("n", "<leader>e", function()
  Snacks.explorer({ cwd = vim.fn.expand("%:p:h") })
end, { desc = "Explorer Snacks (cwd)" })
vim.keymap.set("n", "<leader>E", function()
  Snacks.explorer()
end, { desc = "Explorer Snacks (root dir)" })

vim.keymap.set("i", "<Down>", function()
  local current_line_num = vim.fn.line(".")
  local next_line_num = current_line_num + 1
  local next_line = vim.fn.getline(next_line_num)

  -- Move down first
  vim.cmd("normal! j")

  -- If next line is empty or only whitespace, match previous line's indent
  if next_line:match("^%s*$") then
    local prev_line = vim.fn.getline(current_line_num)
    local indent = prev_line:match("^%s*") or ""
    vim.api.nvim_set_current_line(indent)
    -- Move to the END of the indentation (after all spaces)
    vim.fn.cursor(0, vim.fn.col("$"))
  end
end, { silent = true })

vim.keymap.set("i", "<Up>", function()
  local current_line_num = vim.fn.line(".")
  local prev_line_num = current_line_num - 1
  local prev_line = vim.fn.getline(prev_line_num)

  -- Move up first
  vim.cmd("normal! k")

  -- If previous line is empty or only whitespace, match next line's indent
  if prev_line:match("^%s*$") then
    local next_line = vim.fn.getline(current_line_num)
    local indent = next_line:match("^%s*") or ""
    vim.api.nvim_set_current_line(indent)
    -- Move to the END of the indentation (after all spaces)
    vim.fn.cursor(0, vim.fn.col("$"))
  end
end, { silent = true })
