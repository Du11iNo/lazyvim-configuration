return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha",
      transparent_background = true,
      term_colors = true,
      color_overrides = {
        mocha = {
          base = "#0c0c0c",
          text = "#CDD6F4",
          rosewater = "#F5E0DC",
          lavender = "#B4BEFE",
          green = "#A6E3A1",
          yellow = "#F9E2AF",
          subtext0 = "#A6ADC8",
        },
      },
      custom_highlights = function(colors)
        return {
          ["@terminal.black"] = { fg = "#3B4252" },
          ["@terminal.red"] = { fg = "#BF616A" },
          ["@terminal.green"] = { fg = "#A3BE8C" },
          ["@terminal.yellow"] = { fg = "#EBCB8B" },
          ["@terminal.blue"] = { fg = "#81A1C1" },
          ["@terminal.magenta"] = { fg = "#B48EAD" },
          ["@terminal.cyan"] = { fg = "#88C0D0" },
          ["@terminal.white"] = { fg = "#E5E9F0" },
          ["@terminal.bright_black"] = { fg = "#4C566A" },
          ["@terminal.bright_red"] = { fg = "#BF616A" },
          ["@terminal.bright_green"] = { fg = "#A3BE8C" },
          ["@terminal.bright_yellow"] = { fg = "#EBCB8B" },
          ["@terminal.bright_blue"] = { fg = "#81A1C1" },
          ["@terminal.bright_magenta"] = { fg = "#B48EAD" },
          ["@terminal.bright_cyan"] = { fg = "#8FBCBB" },
          ["@terminal.bright_white"] = { fg = "#ECEFF4" },
          ["@function"] = { fg = "#89b4fa", bold = true }, -- blue, bold
          ["@function.call"] = { fg = "#89b4fa" },
          ["@method"] = { fg = "#89dceb" },
          ["@method.call"] = { fg = "#89dceb" },
          ["@variable"] = { fg = "#cdd6f4" },
          ["@variable.builtin"] = { fg = "#f38ba8" }, -- red (self, this)
          ["@parameter"] = { fg = "#fab387", italic = true }, -- peach, italic
          ["@type"] = { fg = "#f9e2af", bold = true }, -- yellow, bold
          ["@type.builtin"] = { fg = "#f9e2af" },
          ["@keyword"] = { fg = "#cba6f7", bold = true }, -- mauve
          ["@string"] = { fg = "#a6e3a1" }, -- green
          ["@number"] = { fg = "#fab387" }, -- peach
          ["@boolean"] = { fg = "#f38ba8", bold = true }, -- red
          ["@constant"] = { fg = "#f5c2e7", bold = true }, -- pink
          ["@constant.builtin"] = { fg = "#f5c2e7" },
          ["@property"] = { fg = "#89dceb" }, -- sky
          ["@field"] = { fg = "#89dceb" },
        }
      end,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
