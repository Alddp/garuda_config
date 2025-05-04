-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroUI provides the basis for configuring the AstroNvim User Interface
-- Configuration documentation can be found with `:h astroui`

-- theme colors
local colors = {
  dark = "#111317",
  light = "#777777",
  neutral = "#8094B4",
  backdrop = "#61afef",
}

local new_highlights = {
  -- indentline marker
  NeoTreeIndentMarker = { fg = colors.neutral },

  -- file tree window separator
  NeoTreeWinSeparator = { fg = colors.dark, bg = colors.dark },

  -- info messages
  NeoTreeMessage = { link = "NeoTreeDotfile" },

  -- normal mode appearance
  NeoTreeNormal = { bg = colors.dark },
  NeoTreeNormalNC = { link = "NeoTreeNormal" },

  -- dotfiles
  NeoTreeDotfile = { fg = colors.light },
  NeoTreeDotfiles = { link = "NeoTreeDotfile" },

  -- tabs
  NeoTreeTabActive = { fg = colors.dark, bg = colors.backdrop, bold = true },
  NeoTreeTabInactive = { fg = colors.light, bg = colors.dark },

  -- tab separators
  NeoTreeTabSeparatorActive = { fg = colors.backdrop, bg = colors.backdrop },
  NeoTreeTabSeparatorInactive = { link = "NeoTreeWinSeparator" },

  -- file operations prompt
  NeoTreeTitleBar = { link = "NeoTreeTabActive" },
  NeoTreeFloatNormal = { bg = colors.dark },
  NeoTreeFloatBorder = { fg = colors.backdrop, bg = colors.dark },
}

---@type LazySpec
return {
  {
    "AstroNvim/astroui",
    ---@param opts AstroUIOpts
    opts = function(_, opts)
      -- Configure highlights
      if not opts.highlights then opts.highlights = {} end
      local astrodark = opts.highlights.astrodark
      if type(astrodark) == "function" then
        opts.highlights.astrodark = function(...) return require("astrocore").extend_tbl(astrodark(...), new_highlights) end
      else
        opts.highlights.astrodark = require("astrocore").extend_tbl(astrodark, new_highlights)
      end

      -- Configure icons
      if not opts.icons then opts.icons = {} end
      opts.icons.GitAdd = "󰬈"
      opts.icons.GitChange = "󰬔"
      opts.icons.GitDelete = "󰬋"
      opts.icons.GitRenamed = "󰬙"
      opts.icons.GitUntracked = "󰬛"
      opts.icons.GitIgnored = "󰬐"
      opts.icons.GitUnstaged = "󰬜"
      opts.icons.GitStaged = "󰬚"
      opts.icons.GitConflict = "󰬊"

      -- Set colorscheme
      opts.colorscheme = "onedark" -- You can change this to "catppuccin-mocha" or another scheme

      -- Optional initial highlights
      opts.highlights.init = {
        -- Normal = { bg = "#000000" },  -- example of overriding a highlight globally
      }
    end,
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      { "<leader>N", "", desc = " Neotree" },
      -- Set Neotree root as workspace
      { "<leader>Nw", "<cmd>:Neotree dir=./<CR>", desc = "Cd To WorkSpace" },

      -- Open the buffer's directory
      {
        "<leader>Nb",
        function() vim.cmd("cd " .. vim.fn.expand "%:p:h") end,
        desc = "CD to current buffer's directory",
      },
    },
  },
}
