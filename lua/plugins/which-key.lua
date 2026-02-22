return {
  {
    "folke/which-key.nvim",
    opts = function(_, opts)
      return opts
    end,
    config = function(_, opts)
      local wk = require("which-key")
      wk.setup(opts)

      -- Set colors after a brief delay to ensure they apply
      vim.schedule(function()
        -- Main highlights
        vim.api.nvim_set_hl(0, "WhichKey", { fg = "#81A1C1", bold = true })
        vim.api.nvim_set_hl(0, "WhichKeyGroup", { fg = "#88C0D0" })
        vim.api.nvim_set_hl(0, "WhichKeyDesc", { fg = "#CDD6F4" })
        vim.api.nvim_set_hl(0, "WhichKeySeparator", { fg = "#A3BE8C" })
        vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = "#0c0c0c" })
        vim.api.nvim_set_hl(0, "WhichKeyBorder", { fg = "#4C566A", bg = "#0c0c0c" })
        vim.api.nvim_set_hl(0, "WhichKeyValue", { fg = "#B48EAD" })

        -- Additional highlights that might be used
        vim.api.nvim_set_hl(0, "WhichKeyNormal", { fg = "#CDD6F4", bg = "#0c0c0c" })
        vim.api.nvim_set_hl(0, "WhichKeySeperator", { fg = "#A3BE8C" }) -- typo in some versions
        vim.api.nvim_set_hl(0, "WhichKeyIcon", { fg = "#81A1C1" })
        vim.api.nvim_set_hl(0, "WhichKeyIconAzure", { fg = "#81A1C1" })
        vim.api.nvim_set_hl(0, "WhichKeyIconBlue", { fg = "#81A1C1" })
        vim.api.nvim_set_hl(0, "WhichKeyIconCyan", { fg = "#88C0D0" })
        vim.api.nvim_set_hl(0, "WhichKeyIconGreen", { fg = "#A3BE8C" })
        vim.api.nvim_set_hl(0, "WhichKeyIconGrey", { fg = "#4C566A" })
        vim.api.nvim_set_hl(0, "WhichKeyIconOrange", { fg = "#EBCB8B" })
        vim.api.nvim_set_hl(0, "WhichKeyIconPurple", { fg = "#B48EAD" })
        vim.api.nvim_set_hl(0, "WhichKeyIconRed", { fg = "#BF616A" })
        vim.api.nvim_set_hl(0, "WhichKeyIconYellow", { fg = "#EBCB8B" })
      end)
    end,
  },
}
